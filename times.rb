class Integer
  def n_times
    i = 0
    while i < self
      puts "Yielding... (#{i})"
      yield i
      i += 1
    end
  end
end

10.n_times { |n| puts "#{n} Hi"}