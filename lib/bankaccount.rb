require 'date'

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

  def add_deposits(deposits)
    @balance += deposits
    deposit_transaction = {date: Date.today.to_s, credit: deposits, debit: nil, balance: @balance}
    @transactions.push(deposit_transaction)
  end

  def take_withdrawal(withdrawal)
    @balance -= withdrawal
    withdrawal_transaction = {date: Date.today.to_s, credit: nil, debit: withdrawal, balance: @balance}
    @transactions.push(withdrawal_transaction)
  end

end
