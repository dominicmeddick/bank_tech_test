require 'transaction'

describe Transaction do

  it 'should record the four given criteria' do
    expect(subject.record).to eq [:date, :credit, :debit, :balance]
  end
  
end