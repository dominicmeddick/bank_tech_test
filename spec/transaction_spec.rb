require 'transaction'

describe Transaction do

  let(:transaction) { Transaction.new}

  it 'should record the four given criteria' do
    expect(transaction.record.keys).to eq [:date, :credit, :debit, :balance]
  end
  
end