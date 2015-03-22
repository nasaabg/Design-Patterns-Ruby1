require 'json'

class FileWriter
  def initialize(file_name)
    @file = output(file_name)
  end

  def write(data)
    save_in_file(data)
  end

  private

  def output(file_name)
  end

  def save_in_file(data)  
  end
end


class TxtFileWriter < FileWriter
  private

  def save_in_file(data)
    @file.write data.join(" ")
  end

  def output(file_name)
    File.open(file_name, 'w')
  end
end

class JsonFileWritter < FileWriter
  private

  def save_in_file(data)
    hash = data.map{ |n| ["value#{n}",n] }.to_h
    @file.write hash.to_json
  end


  def output(file_name)
    File.open(file_name, 'w')
  end
end