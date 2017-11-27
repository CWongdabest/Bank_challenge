class Bankstatement

  def initialize (transactions)
    @transactions = transactions
  end

  def header
    'date || credit || debit || balance'
  end

  def format_transactions
    @transactions.map do |transaction|
      credit?(transaction) ? format_credit_transaction(transaction) : format_dedit_transaction(transaction)
    end
  end

  def print
    puts header
    format_transactions.each {|transaction| puts transaction}
  end

private

  def credit?(transaction)
    transaction[:credit] != nil
  end

  def format_credit_transaction(transaction)
    "#{transaction[:date]} || #{ sprintf('%.2f', transaction[:credit])} ||  || #{sprintf('%.2f', transaction[:balance])}"
  end

  def format_dedit_transaction(transaction)
    "#{transaction[:date]} ||  || #{ sprintf('%.2f', transaction[:debit])} || #{sprintf('%.2f', transaction[:balance])}"
  end


end
