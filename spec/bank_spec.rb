require 'bank'

describe Bank do
  
  it 'can make a deposit of 1000' do
    expect(subject.deposit(1000)).to eq(1000)
  end

  it 'can withdraw 500' do
    subject.deposit(1000)
    expect(subject.withdraw(500)).to eq(500)
  end

end