require 'algorithms'
require 'pry'

class Sort
  def sort(numbers)
     raise NotImplementedError, 'Ask the subclass'
  end
end

# Implements Sort
class BubbleSort < Sort
  def sort(numbers)
    Algorithms::Sort.bubble_sort(numbers)
  end
end

class MergeSort < Sort
  def sort(numbers)
    Algorithms::Sort.mergesort(numbers)
  end
end

# Kontekst
class Sortable

  def initialize(strategy,numbers)
    @strategy = strategy
    @numbers = numbers
  end

  def call
    @strategy.sort(@numbers)
  end
end
