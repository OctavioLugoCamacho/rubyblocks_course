class Order
  TAX_TABLE = { "CO" => 0.02, "MT" => 0.00, "AZ" => 0.04}
  attr_reader :email, :total, :state, :status

  def initialize(email, state, total, status = :pending)
    @email = email
    @state = state
    @total = total
    @status = status
  end

  def tax
    total * TAX_TABLE[state]
  end

  def to_s
    "#{email} (#{state}): $#{total} - #{status}"
  end
end

orders = []
orders << Order.new("octavio1@makingdevs.com", "MT", 300)
orders << Order.new("octavio2@makingdevs.com", "AZ", 400, :completed)
orders << Order.new("octavio3@makingdevs.com", "CO", 200)
orders << Order.new("octavio4@makingdevs.com", "CO", 100, :completed)

puts orders
puts "*" * 20
puts "Big orders:"
puts orders.select { |o| o.total >= 300 }
puts "*" * 20
puts "Small orders:"
puts orders.reject { |o| o.total >= 300 }
puts "*" * 20
puts orders.any? { |o| o.status == :pending }
puts "*" * 20
puts orders.detect { |o| o.status == :pending }
puts "*" * 20
puts orders.partition { |o| o.status == :pending }
puts "*" * 20
big_orders, small_orders = orders.partition { |o| o.total >= 300 }
puts "Big orders:"
puts big_orders
puts "Small orders:"
puts small_orders

puts "Newsletter emails:"
emails = orders.map { |o| o.email.downcase }
puts emails

puts "Taxes:"
co_taxes = orders.select { |o| o.state == "CO" }.map { |o| o.tax}
puts co_taxes

sum = orders.reduce(0) { |s, o| s + o.total }
puts "Total sales: #{sum}"

total_taxes = orders.map { |o| o.tax }.reduce(:+)
puts "Total taxes: #{total_taxes}"