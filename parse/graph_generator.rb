class GraphGenerator
  def initialize(class_name, calls)
    @calls = calls
    @class_name = class_name
  end

  def generate
    g = GraphViz.new( :G, :type => :digraph )
    nodes = {}
    @calls.each_key { |key| nodes[key] = g.add_nodes(key.to_s) }
    @calls.each do |calling_method, called_methods|
      called_methods.each { |called_method| g.add_edges( nodes[calling_method], nodes[called_method] ) }
    end

    g.output( :png => "#{@class_name}.png" )
  end
end