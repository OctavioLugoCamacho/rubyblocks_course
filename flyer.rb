class Flyer
  attr_reader :name, :email, :miles_flown
  attr_accessor :status

  def initialize(name, email, miles_flown, status=:bronze)
    @name = name
    @email = email
    @miles_flown = miles_flown
    @status = status
  end

  def to_s
    "#{name} (#{email}): #{miles_flown} - #{status}"
  end
end

flyers = []
flyers << Flyer.new("Larry", "larry@example.com", 4000, :platinum)
flyers << Flyer.new("Moe", "moe@example.com", 1000)
flyers << Flyer.new("Curly", "curly@example.com", 3000, :gold)
flyers << Flyer.new("Shemp", "shemp@example.com", 2000)

frequent_flyers = flyers.select { |flyer| flyer.miles_flown >= 3000 }
puts frequent_flyers
puts "*" * 20
infrequent_flyers = flyers.reject { |flyer| flyer.miles_flown >= 3000 }
puts infrequent_flyers
puts "*" * 20
puts flyers.any? { |flyer| flyer.status == :platinum }
puts "*" * 20
first_bronze_flyer = flyers.detect { |flyer| flyer.status == :bronze }
puts first_bronze_flyer