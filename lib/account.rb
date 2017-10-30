require_relative 'transaction'

class Account

attr_reader :balance

  def initialize
    @balance = 0
    @transaction_history = []
  end

  def credit(amount)
    @balance += amount
    create_transaction
    save_transaction
  end

  def debit(amount)
    @balance -= amount
    create_transaction
    save_transaction

  end

  private

  def create_transaction(credit: 0, debit: 0)
    @transaction = Transaction.new(credit: credit, debit: debit)
  end

  def save_transaction(credit: 0, debit: 0)
    @transaction_history << @transaction
  end


end
