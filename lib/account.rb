require_relative 'transaction'

class Account

  attr_reader :balance, :transaction_history

      def initialize
        @balance = 0
        @transaction_history = []
      end

      def deposit(amount)
        @balance += amount
        create_transaction(credit: amount)
        save_transaction
      end
      def withdraw(amount)
        @balance -= amount
        create_transaction(debit: amount)
        save_transaction
      end
      def create_transaction(credit: credit=0, debit: debit=0)
        @transaction = Transaction.new(credit: credit, debit: debit, balance: balance)
      end

      def save_transaction
        @transaction_history << @transaction
      end
      def statement(transaction)
        "date: #{transaction.date} | credit: #{transaction.credit} | debit: #{transaction.debit} | balance: #{transaction.balance}"
      end

      def print_statement
        @transaction_history.each{|transaction| p statement(transaction)}
      end

end
