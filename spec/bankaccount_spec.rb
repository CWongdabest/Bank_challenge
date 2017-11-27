require 'bankaccount'

describe Bankaccount do

  context 'when a bank account is first instantiated' do

  bankaccount = Bankaccount.new

    it 'starts a bank account with a default bank balance' do
      expect(bankaccount.balance).to eq Bankaccount::DEFAULT_BALANCE
    end

    it 'instantiates with an empty list of transactions' do
      expect(bankaccount.transactions.count).to eq 0
    end
  end

  context 'deposits' do
    it 'records a deposit' do
        bankaccount = Bankaccount.new
        bankaccount.add_deposits(30)
        expect(bankaccount.transactions).to eq ([{date: Date.today.to_s, credit: 30, debit: nil, balance: 30}])
    end
  end

  context 'withdrawals' do
    it 'records a withdrawal' do
        bankaccount = Bankaccount.new
        bankaccount.add_deposits(30.00)
        bankaccount.take_withdrawal(30.00)
        expect(bankaccount.transactions).to eq ([{date: Date.today.to_s, credit: 30, debit: nil, balance: 30}, {date: Date.today.to_s, credit: nil, debit: 30, balance: 0}])
    end
  end


end
