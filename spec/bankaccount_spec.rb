require 'bankaccount'

describe Bankaccount do

  it 'starts a bank account with a default bank balance' do
    bankaccount = Bankaccount.new
    expect(bankaccount.balance).to eq Bankaccount::DEFAULT_BALANCE
  end

  it 'instantiates with an empty list of transactions' do
    bankaccount = Bankaccount.new
    expect(bankaccount.transactions.count).to eq 0
  end


end
