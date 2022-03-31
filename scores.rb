scores = [83, 71, 92, 64, 98, 87, 75, 69]

high_scores = scores.select { |score| score > 80 }
p high_scores
puts "*" * 20
low_scores = scores.reject { |score| score > 80 }
p low_scores
puts "*" * 20
puts scores.any? { |score| score < 70 }
puts "*" * 20
puts scores.detect { |score| score < 70 }
puts "*" * 20
scores_doubled = scores.map { |score| score * 2 }
p scores_doubled
puts "*" * 20
total = scores.reduce(0, :+)
puts "Total score: #{total}"
puts "*" * 20
evens, odds = scores.partition { |score| score.even? }
puts "Evens:"
p evens
puts "Odds:"
p odds