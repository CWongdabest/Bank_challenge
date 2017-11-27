require 'bankstatement'
require 'stringio'


describe Bankstatement do


  bankstatement = Bankstatement.new([{date: '1/10/2017', credit: 30, debit: nil, balance: 30}, {date: '1/10/2017', credit: nil, debit: 30, balance: 0}])

    it 'has a header' do
      expect(bankstatement.header).to eq 'date || credit || debit || balance'
    end

    it 'formats transactions' do
      expect(bankstatement.format_transactions).to eq ['1/10/2017 || 30.00 ||  || 30.00', '1/10/2017 ||  || 30.00 || 0.00']
    end

end
