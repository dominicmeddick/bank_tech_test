This bank program emulates the behaviour of a bank account. You can make deposits, withdrawels and print your bank statement

How to test it yourself:
1. git clone the reop
2. Run irb in your terminal and manually test the code with the methods in the bank class. 

```
(base) dominicmeddick@MacBook-Pro bank_tech_test % irb
3.0.1 :001 > require './lib/bank.rb'
 => true 
3.0.1 :002 > bank = Bank.new
 => #<Bank:0x00007feb2014e840 @balance=0.0, @print=#<Print:0x00007feb2014e5e8>, @time=2021-06-03 16:26:06.382517 +0100, @transaction=[]> 
3.0.1 :003 > bank.deposit(1000)
 => [{:date=>"03/06/2021", :credit=>"1000.00", :debit=>0.0, :balance=>"1000.00"}] 
3.0.1 :004 > bank.withdraw(500)
 => [{:date=>"03/06/2021", :credit=>"1000.00", :debit=>0.0, :balance=>"1000.00"}, {:date=>"03/06/2021", :credit=>0.0, :debit=>"500.00", :balance=>"500.00"}] 
3.0.1 :005 > bank.print_statement
date || credit || debit || balance
03/06/2021 || 0.0 || 500.00 || 500.00
03/06/2021 || 1000.00 || 0.0 || 1000.00
 => [{:date=>"03/06/2021", :credit=>0.0, :debit=>"500.00", :balance=>"500.00"}, {:date=>"03/06/2021", :credit=>"1000.00", :debit=>0.0, :balance=>"1000.00"}] 
```

My process: 

I was very strict with my TDD as I hope my commits reflect. 
I didn't want any of classes to be cluttered so I used the Single Responsibility Principle.


## User Stories

As a client,
So that I don't have too much cash on me
I would like to make a desposit

As a client, 
So that I can have access to my money
I would like to withdraw from my account

As a client,
So that I can stay I can keep track on my desposits and withdrawals
I could like my transactions to have dates

As a client,
So that I can see my activity
I would like to print my bank statement

