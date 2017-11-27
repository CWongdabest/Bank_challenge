require 'bankaccount'
require 'bankstatement'

class Customer

  def initialize(bankaccount = Bankaccount.new)
    @bankaccount = bankaccount
  end

  def deposit(amount)
    @bankaccount.add_deposits(amount)
  end

  # def withdrawal(amount)
  #   @bankaccount.take_withdrawal(amount)
  # end
  #
  # def print_statement
  #   bankstatement = Bankstatement.new(@bankaccount.transactions)
  #   bankstatement.print
  # end

end
