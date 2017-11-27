require 'customer'

describe Customer do

  class FakeBankaccount
    def initialize
      @balance = 0
      @transactions = []
    end

    def transactions
      @transactions
    end

    def add_deposits(deposits)
      @balance += deposits
      deposit_transaction = {date: '1/1/2010', credit: deposits, debit: nil, balance: @balance}
      @transactions.push(deposit_transaction)
    end

    def take_withdrawal(withdrawal)
      @balance -= withdrawal
      withdrawal_transaction = {date: '1/1/2010', credit: nil, debit: withdrawal, balance: @balance}
      @transactions.push(withdrawal_transaction)
    end
  end

    fakebankaccount = FakeBankaccount.new

    customer = Customer.new(fakebankaccount)

    it 'could make a deposit' do
      customer.deposit(30.00)
      expect(fakebankaccount.transactions).to eq([{date: '1/1/2010', credit: 30.00, debit: nil, balance: 30.00}])
    end




end
