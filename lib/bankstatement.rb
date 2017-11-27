class Bankstatement

  def initialize (transactions)
    @transactions = transactions
  end

  def header
    'date || credit || debit || balance'
  end


end
