require File.expand_path('../file_reader', __FILE__)
require File.expand_path('../sortable', __FILE__)
require File.expand_path('../worker', __FILE__)
require File.expand_path('../file_writer', __FILE__)
require 'pry'

strategy = BubbleSort.new
file_reader = JsonFileReader.new("numbers.json")
file_writer = JsonFileWritter.new("sorted.json")

Worker.new(strategy, file_reader, file_writer).call
