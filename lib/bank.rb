# frozen_string_literal: true

require_relative 'transaction'
require_relative 'print'

require 'Date'

# First class
class Bank
  MIN_BALANCE = 0

  attr_reader :balance, :transaction, :print

  def initialize
    @balance = 0
    @transaction = Transaction.new.record
    @time = Time.new
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

  private

  def desposit_transaction(amount)
    @transaction << { date: @time.strftime('%d/%m/%Y'), credit: amount, debit: 0, balance: @balance }
  end

  def withdraw_transaction(amount)
    @transaction << { date: @time.strftime('%d/%m/%Y'), credit: 0, debit: amount, balance: @balance }
  end

  def insufficient_funds?(amount)
    @balance - amount < MIN_BALANCE
  end
end
