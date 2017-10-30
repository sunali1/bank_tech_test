require 'transaction'

describe Transaction do
  subject(:transaction) { described_class.new(100, 50, 50) }
  let(:credit) { 100 }
  let(:debit)  { 50 }
  let(:new_balance) { 50 }

  it "records the date of credit" do
    expect(transaction.date).to eq("30-10-2017")
  end

  it "records the credit made" do
    expect(transaction.credit).to eq(100)
  end

  it "records the debit made" do
    expect(transaction.debit).to eq(50)
  end

  it "records the new balance" do
    expect(transaction.new_balance).to eq(50)
  end
end
