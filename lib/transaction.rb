require 'date'

class Transaction

attr_reader :date, :debit, :credit, :balance

  def initialize(credit: credit=0, debit: debit=0, balance: balance=0)
    @date = Time.now.strftime("%d-%m-%Y")
    @debit = debit
    @credit = credit
    @balance = balance
  end

end
