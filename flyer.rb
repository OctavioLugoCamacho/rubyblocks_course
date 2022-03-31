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
puts "*" * 20
platinum_flyers, other_flyers = flyers.partition { |flyer| flyer.status == :platinum }

puts "Platinum Flyers:"
puts platinum_flyers

puts "Other Flyers:"
puts other_flyers
puts "*" * 20
name_tags = flyers.map { |flyer| "#{flyer.name} (#{flyer.status.upcase})"}
p name_tags
puts "*" * 20
totals_in_kms = flyers.map { |flyer| flyer.miles_flown * 1.6 }
p totals_in_kms
puts "*" * 20
total_miles_flown = flyers.reduce(0) { |sum, flyer| sum + flyer.miles_flown }
puts "Total miles flown: #{total_miles_flown}"
puts "*" * 20
total_kms_flown = flyers.map { |flyer| flyer.miles_flown * 1.6 }.reduce(0, :+)
puts "Total km flown: #{total_kms_flown}"