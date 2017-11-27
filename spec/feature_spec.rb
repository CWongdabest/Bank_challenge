require './lib/bankstatement'
transactions = [{date: '1/10/2017', credit: 30.00, debit: nil, balance: 30.00}, {date: '1/10/2017', credit: nil, debit: 30.00, balance: 0.00}]
bankstatement = Bankstatement.new(transactions)
bankstatement.print
