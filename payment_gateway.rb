class PaymentGateway
  def initialize(user, password)
    @user = user
    @password = password
  end

  def connect
    puts "Connected as #{@user}"
  end

  def disconnect
    puts "Disconnected #{@user}!"
  end

  def submit(type, amount)
    puts "Submitted #{type} for #{amount}"
  end

  def self.open(user, password)
    gateway = self.new(user, password)
    gateway.connect

    return gateway unless block_given?

    begin
      yield(gateway)
    rescue Exception => e
      puts e.message
    ensure
      gateway.disconnect
    end
  end
end


gateway = PaymentGateway.open("nicole", "secret")
gateway.submit(:void, 15.00)
gateway.disconnect

PaymentGateway.open("nicole", "secret") do |gateway|
  gateway.submit(:sale, 12.00)
  gateway.submit(:sale, 10.00)
end

PaymentGateway.open("nicole", "secret") do |gateway|
  gateway.submit(:refund, 5.00)
  gateway.submit(:refun, 20.00)
  raise "Problem!"
end