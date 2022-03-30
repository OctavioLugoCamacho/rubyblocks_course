cards = ["Jack", "Queen", "King", "Ace", "Joker"]
cards.each { |card| puts card.upcase }
puts "*" * 15
cards.each { |card| puts "#{card.upcase} - #{card.length}" }
puts "*" * 15
cards.shuffle.each { |card| puts "#{card.upcase} - #{card.length}" }
puts "*" * 15
cards.reverse_each { |card| puts "#{card.upcase} - #{card.length}" }
puts "*" * 15
scores = {"Larry" => 10, "Moe" => 8, "Curly" => 12}
scores.each { |name, score| puts "#{name} scored a #{score}!" }