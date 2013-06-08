require_relative 'graph_generator'
require_relative 'call_parser'

contents = File.read("/home/martin/code/me/sandbox/call_parser.rb")
id = CallParser.new
id.parse(contents)

graphs = GraphGenerator.new("CallParser", id.calls)
graphs.generate