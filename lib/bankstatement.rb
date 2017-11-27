class Bankstatement

  def initialize (transactions)
    @transactions = transactions
  end

  def header
    'date || credit || debit || balance'
  end

  def format_transactions
    @transactions.map do |transaction|
      if transaction[1]  
        transaction[0] + '||' +
    end
  end


end
