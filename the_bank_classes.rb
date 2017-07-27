class Customer
  attr_accessor :name, :location

  def initialize(name, location)
    @name = name
    @location = location

  end
end

class Account

  attr_accessor :customer, :account_type
  attr_reader :account_number, :balance

  def initialize(customer, account_type, account_number, balance)
    @customer = customer
    @account_type = account_type
    @account_number = account_number
    @balance = balance
  end
  def deposit
    puts "How much would you like to deposit today?"
    puts "$"
    amount = gets.chomp.to_f          #{.02.to.f}
    @balance += amount
    puts "Your new balance is $#{'.02f' %(@balance)}"
  end
  def withdrawal
    puts "How much would you like to withdraw today?"
    puts "$"
    amount = gets.chomp.to_f
    if @balance < amount
      @balance -= (amount + 25)
    else
      @balance -= amount
    end
    puts "Your remaining balance is $#{'.02f' %(@balance)}"
  end
end
