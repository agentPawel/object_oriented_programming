#1. Create bank account class.
class BankAccount
  attr_accessor :interest_rate, :balance

  # 2. Every bank account should have balance and interest_rate attributes.
  def initialize (balance, interest_rate = 0 )
    @balance = balance
    @interest_rate = interest_rate
  end

  # 3. Deposit that accepts one amount argument and adds that amount to the total balance
  def deposit (amount)
    @balance += amount
  end

  # 4. Widthrawl method reduces balance by amount withdrawn.
  def withdrawl (amount)
    @balance -= amount
  end

  # 5. Increases total balance by interest rate.
  def gain_interest
    @balance = @balance + (@balance * @interest_rate)
  end
end
