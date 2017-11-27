require './lib/bankaccount'

bankaccount = Bankaccount.new
bankaccount.deposit(30)
bankaccount.print_statement
bankaccount.withdrawal(30)
bankaccount.print_statement
