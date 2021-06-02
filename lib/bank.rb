require_relative 'transaction'
require 'Date'

class Bank

  attr_reader :balance, :transaction
  
  def initialize
    @balance = 0
    @transaction = Transaction.new.record
    @time = Time.new
  end

  def deposit(amount)
    @balance += amount
    @transaction[:date] = @time.strftime("%d/%m/%Y")
    @transaction[:credit] = amount
    @transaction[:debit] = 0
    @transaction[:balance] = @balance
  end

  def withdraw(amount)
    @balance -= amount
    @transaction[:date] = @time.strftime("%d/%m/%Y")
    @transaction[:credit] = 0
    @transaction[:debit] = amount
    @transaction[:balance] = @balance
  end

end
