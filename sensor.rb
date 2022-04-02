class Sensor
  def temperature
    rand(100..200)
  end

  def level
    rand(1..5)
  end
end

sensor = Sensor.new

def checking(description)
  puts "Checking water #{description}..."
  result = yield
  if result
    puts "Ok"
  else
    puts "Failed"
  end
end


checking("temperature") { sensor.temperature < 150 }
checking("level") { sensor.level > 3 }


