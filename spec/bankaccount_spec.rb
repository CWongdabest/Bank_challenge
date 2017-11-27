require 'bankaccount'

describe Bankaccount do

  it 'starts a bank account with a default bank balance' do
    bankaccount = Bankaccount.new
    expect(bankaccount.balance).to eq Bankaccount::DEFAULT_BALANCE
  end


end
