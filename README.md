## User stories for bank challenge:
```
As a customer,
So that I can transfer money,
I would like to register for a new bank account.

As a customer,
So that I can maintain a positive balance for my account,
I would like to deposit money to my bank account.

As a customer,
So that I can access my money,
I would like to withdraw money from my bank account.  

As a customer,
So that I can review my transaction history,
I would like to print my bank account statement.

As a bank,
So that my staff can keep track of customer transactions,
I would like to save the data of customer transactions.   
```

To use the application:

## Creating a bank account
bankaccount = Bankaccount.new

## Depositing money
bankaccount.deposit(amount you wish to deposit)

## Withdrawing money
bankaccount.withdrawal(amount you wish to withdraw)

## Printing statement
bankaccount.print_statement


## to run tests:

Unit tests:
First run 'bundle install'
Then run 'rspec'

Feature test:
Run irb
require './spec/feature_spec.rb'
