require 'date'
require_relative './bankstatement'

class Bankaccount

DEFAULT_BALANCE = 0

attr_reader :balance, :transactions

  def initialize
    @balance = DEFAULT_BALANCE
    @transactions = []
  end

  def deposit(deposits)
    @balance += deposits
    deposit_transaction = {date: Date.today.to_s, credit: deposits, debit: nil, balance: @balance}
    @transactions.push(deposit_transaction)
  end

  def withdrawal(withdrawal)
    @balance -= withdrawal
    withdrawal_transaction = {date: Date.today.to_s, credit: nil, debit: withdrawal, balance: @balance}
    @transactions.push(withdrawal_transaction)
  end

  def print_statement
    bankstatement = Bankstatement.new(@transactions)
    bankstatement.print
  end

end
