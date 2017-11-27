require 'bankstatement'

describe Bankstatement do

  class FakeBankaccount
    def transactions
      [['1/10/2017', 30, 30], ['1/10/2017', -30, 0]]
    end
  end

  fakebankaccount = FakeBankaccount.new

  bankstatement = Bankstatement.new(fakebankaccount.transactions)

    it 'has a header' do
      expect(bankstatement.header).to eq 'date || credit || debit || balance'
    end



end
