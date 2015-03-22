class Worker
  def initialize(strategy, file_reader, file_writer)
    @strategy = strategy
    @file_reader = file_reader
    @file_writer = file_writer
  end

  def call
    numbers = @file_reader.read
    sorted = @strategy.sort(numbers)
    @file_writer.write(sorted)
  end
end