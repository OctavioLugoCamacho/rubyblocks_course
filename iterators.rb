class Array
  def my_each
    i = 0
    while i < self.size
      yield self[i]
      i += 1
    end
  end
end

weekdays = ["monday", "tuesday", "wednesday", "thursday", "friday"]
weekdays.my_each { |d| puts d.capitalize }