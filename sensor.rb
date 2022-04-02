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

def h1
  puts "<h1>"
  puts yield
  puts "</h1>"
end

def h2
  puts "<h2>"
  puts yield
  puts "</h2>"
end

def tag(name)
  puts "<#{name}>"
  puts yield
  puts "</#{name}>"
end

h1 { "Breaking News!" }
h2 { "Massive Ruby Discovered" }

tag(:h1) { "Breaking News!" }
tag(:h2) { "Massive Ruby Discovered" }

tag(:ul) do
  tag(:li) { "It sparkles!"}
  tag(:li) { "It shines!"}
  tag(:li) { "It mesmerizes!"}
end


