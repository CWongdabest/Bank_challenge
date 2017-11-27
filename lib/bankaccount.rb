class Bankaccount

DEFAULT_BALANCE = 0

attr_reader :balance

  def initialize
    @balance = DEFAULT_BALANCE
    @transactions = []
  end

  def transactions
    @transactions
  end

  def add_deposits(date, deposits)
    @balance += deposits
    @transactions.push([date, deposits, @balance])
  end






end
