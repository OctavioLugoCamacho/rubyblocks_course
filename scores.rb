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