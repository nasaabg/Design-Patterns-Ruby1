# Abstract class
require 'json'

class FileReader
  
  def initialize(file_name)
    @file = source(file_name)
  end

  def read
    get_numbers
  end

  private

  def get_numbers
    raise NotImplementedError, 'Sorry, you have to override get_numbers'   
  end

  def source(file_name)
    raise NotImplementedError, 'Sorry, you have to override get_numbers'   
  end
end


# Extends
class TxtFileReader < FileReader
  private

  def get_numbers
    line = @file.gets
    line.split(/[^\d]/).map(&:to_i)
  end

  def source(file_name)
    File.new(file_name, "r")
  end

end


class JsonFileReader < FileReader
  private

  def get_numbers
    data_hash = JSON.parse(@file)
    data_hash.map{ |key, value| data_hash[key] }
  end

  def source(file_name)
    File.read(file_name)
  end
end
