require 'parser/current'
require 'graphviz'
require_relative 'graph_generator'

class CallParser
  attr_accessor :method_defs, :classes, :calls, :root_node

  def initialize
    @method_defs = {} 
    @calls = {} 
    @calls[nil] = [] 
    @method_defs[nil] = []
    @classes = []
    @current_class = nil
    @current_method = nil
  end

  def filter
    all_methods = @method_defs.values.flatten 
    @calls.each { |inside_method, called_methods| @calls[inside_method] = called_methods & all_methods }
  end

  def self_call?(node)
    node.type == :send && node.children[1].class == Symbol && node.children[0] == nil
  end

  def walk(node)
    if(node.class == Parser::AST::Node) 
      if(node.type == :class) 
        @current_class = node.children.first.children[1]

        @method_defs[@current_class] = []
        @classes << @current_class
      end
      if(self_call?(node))
        puts "Send:"
        puts node.children[1]

        p @current_method
        @calls[@current_method] << node.children[1]
      end
      if(node.type == :def)
        @current_method = node.children.first
        @calls[@current_method] = []
        @method_defs[@current_class] << @current_method
      end
      node.children.each { |node|  walk(node) }
    else
      # nothing
    end
  end

  def parse(contents)
    @root_node = Parser::CurrentRuby.parse(contents)
    walk(@root_node)
    filter
  end
end

