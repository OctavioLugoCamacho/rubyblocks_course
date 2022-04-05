class File
  def self.my_open(filename, mode)
    file = self.new(filename, mode)

    return file unless block_given?
    begin
      yield(file)
    ensure
      file.close
    end
  end
end

File.my_open("letter.txt", "w") do |f|
  f.puts "The"
  f.puts "Batman!"
end

File.my_open("letter.txt", "r") do |f|
  f.each { |line| puts line }
end