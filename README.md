•••What is it:

This is a practice session/test for OO design and TDD skills, working alone and practice working and reflecting to improve own code.

••• User Stories

As a client
so that I can keep my money safe
I want to open a bank account

As an account holder
so that I can save
I want to make deposits to my account

As an account holder
so that I can access my money
I want to make withdrawals from my account

As an account holder
so that I can plan my spending
I want to see the dates I have made the withdrawals or deposits

As an account holder
so I can have a record
I would like to print my transaction statement to include dates, credits and debits



•••Domain Modelling

Bank Account has the responsibility to 'balance', 'credit/deposit', 'debit/withdrawal', 'create', 'save',
Bank Statement/Transaction History is an array of 'transactions'  
Single Transaction - 'date', 'credit', 'debit', 'new_balance'
Statement has a responsibility of 'print'
