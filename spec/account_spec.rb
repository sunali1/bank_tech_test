require 'account'

describe Account do
  subject(:account) { described_class.new }

  it "initializes with a balance of 0" do
    expect(account.balance).to eq(0)
  end

  it "increases the balance by credit amount" do
    account.deposit(100)
    expect(account.balance).to eq(100)
  end

  it "decreases the balance by deposit amount" do
    account.deposit(100)
    account.withdrawal(50)
    expect(account.balance).to eq(50)
  end


end
