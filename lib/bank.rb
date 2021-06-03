# frozen_string_literal: true

require_relative 'transaction'
require_relative 'print'

require 'Date'

# First class
class Bank
  MIN_BALANCE = 0.00

  attr_reader :balance, :transaction, :print

  def initialize
    @balance = 0.00
    @transaction = Transaction.new.record
    @time = Time.new
    @print = Print.new
  end

  def deposit(amount)
    @balance += amount
    desposit_transaction(amount)
  end

  def withdraw(amount)
    raise 'Insufficient Funds please withdraw a lesser amount' if insufficient_funds?(amount)

    @balance -= amount
    withdraw_transaction(amount)
  end

  def print_statement
    transaction = @transaction
    @print.print_transactions(transaction)
  end

  private

  def desposit_transaction(amount)
    @transaction << { date: @time.strftime('%d/%m/%Y'), credit: "%.2f" % [amount], debit: 0.00, balance: "%.2f" % [@balance] }
  end

  def withdraw_transaction(amount)
    @transaction << { date: @time.strftime('%d/%m/%Y'), credit: 0.00, debit: "%.2f" % [amount], balance: "%.2f" % [@balance] }
  end

  def insufficient_funds?(amount)
    @balance - amount < MIN_BALANCE
  end
end
