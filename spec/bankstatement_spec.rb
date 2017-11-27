require 'bankstatement'

describe Bankstatement do

  class FakeBankaccount
    def transactions
      [{date: '1/10/2017', credit: 30.00, debit: nil, balance: 30.00}, {date: '1/10/2017', credit: nil, debit: 30.00, balance: 0.00}]
    end
  end

  fakebankaccount = FakeBankaccount.new

  bankstatement = Bankstatement.new(fakebankaccount.transactions)

    it 'has a header' do
      expect(bankstatement.header).to eq 'date || credit || debit || balance'
    end

    it 'formats transactions' do
      expect(bankstatement.format_transactions).to eq ['1/10/2017 || 30.00 ||  || 30.00', '1/10/2017 ||  || 30.00 || 0.00']
    end



end
