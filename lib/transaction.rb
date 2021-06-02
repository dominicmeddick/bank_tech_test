class Transaction

  attr_reader :record

  def initialize
    @record = { date: nil, credit: nil, debit: nil, balance: nil}
  end

end