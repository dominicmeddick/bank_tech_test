class Transaction

  attr_reader :record

  def initialize
    @record = [:date, :credit, :debit, :balance]
  end

end