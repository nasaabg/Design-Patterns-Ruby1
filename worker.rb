class Worker
  def initialize(strategy, file_reader)
    @strategy = strategy
    @file_reader = file_reader
  end

  def call
    numbers = @file_reader.read
    @strategy.sort(numbers)
  end
end