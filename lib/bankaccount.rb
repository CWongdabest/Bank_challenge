class Bankaccount

DEFAULT_BALANCE = 0

attr_reader :balance, :transactions 

  def initialize
    @balance = DEFAULT_BALANCE
    @transactions = []
  end




end
