require 'account'

describe Account do
  subject(:account) { described_class.new }

  it "initializes with a default balance of 0" do
    expect(account.balance).to eq(0)
  end

  it "increases the balance by deposited amount" do
    account.deposit(100)
    expect(account.balance).to eq(100)
  end

  it "decreases the balance by withdrawn amount" do
    account.deposit(100)
    account.withdraw(50)
    expect(account.balance).to eq(50)
  end

  it "creates a transaction entry when credit is made" do
    account.withdraw(50)
    expect(account.transaction_history.length).to eq(1)
  end

  it "creates a transaction and saves in transaction history upon a deposit and withdrawal" do
    account.deposit(100)
    account.withdraw(50)
    expect(account.transaction_history.length).to eq(2)
  end

  # it "creates a transaction in transaction history" do
  #   account.credit(100)
  #   expect(account.create_transaction).to eq(credit: 100, debit: 0, new_balance: 100)
  # end


end
