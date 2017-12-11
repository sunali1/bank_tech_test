require 'transaction'

describe Transaction do

    let(:credit) {double :credit}
    let(:debit) {double :debit}
    let(:balance) {double :balance}
    subject(:transaction) { described_class.new(credit: credit, debit: debit, balance: balance) }

  it "should respond to initialize with default balance of 0" do
    expect(Transaction.new.balance).to eq(0)
  end

  it "records the date of transaction" do
    expect(transaction.date).to eq("11-12-2017")
  end

  it "records the credit made" do
    expect(transaction.credit).to eq(credit)
  end

  it "records the debit made" do
    expect(transaction.debit).to eq(debit)
  end

  it "records the new balance" do
    expect(transaction.balance).to eq(balance)
  end
end
