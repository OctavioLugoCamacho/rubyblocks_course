def deal
  faces = ["Jack", "Queen", "King", "Ace"]
  suits = ["Hearts", "Diamonds", "Spades", "Clubs"]
  if block_given?
    random_face = faces.sample
    random_suit = suits.sample
    score = yield random_face, random_suit
    puts "You scored a #{score}!"
  else
    puts "No deal!"
  end
end

deal do |face, suit|
  puts "Dealt a #{face} of #{suit}"
  face.length + suit.length
end