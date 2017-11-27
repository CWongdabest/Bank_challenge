class Bankstatement

  def initialize (transactions)
    @transactions = transactions
  end

  def header
    'date || credit || debit || balance'
  end

  def format_transactions
    @transactions.map do |transaction|
      if transaction[:credit] != nil
        "#{transaction[:date]} || #{ sprintf('%.2f', transaction[:credit])} ||  || #{sprintf('%.2f', transaction[:balance])}"
      else
        "#{transaction[:date]} ||  || #{ sprintf('%.2f', transaction[:debit])} || #{sprintf('%.2f', transaction[:balance])}"
      end
    end
  end


end
