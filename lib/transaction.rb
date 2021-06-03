# frozen_string_literal: true

# Second class
class Transaction
  attr_reader :record

  def initialize
    @record = { date: [], credit: [], debit: [], balance: nil }
  end
end
