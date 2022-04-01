def roll
  puts "Starting method..."
  number = rand(1..6)
  result = yield "Octavio", number
  puts "Block returned: #{result}"
end

roll do |name, number|
  puts "#{name} your number is: #{number}"
  number * 2
end