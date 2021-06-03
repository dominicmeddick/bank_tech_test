# frozen_string_literal: true

# Second class
class Transaction
  attr_reader :record

  def initialize
    @record = []
  end
end
