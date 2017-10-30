require 'date'

class Transaction

attr_reader :date, :debit, :credit, :new_balance

  def initialize(credit, debit, new_balance)
    @date = Time.now.strftime("%d-%m-%Y")
    @debit = debit
    @credit = credit
    @new_balance = new_balance
  end

end
