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

  def add_transaction(date, transaction)
    @balance += transaction
    @transactions.push([date, transaction, @balance])
  end






end
