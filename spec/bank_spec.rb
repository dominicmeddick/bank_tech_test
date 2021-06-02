require 'bank'

describe Bank do
  
  it 'can make a deposit of 1000' do
    expect(subject.deposit(1000)).to eq(1000)
  end

  it 'can withdraw 500' do
    subject.deposit(1000)
    expect(subject.withdraw(500)).to eq(500)
  end

  it 'can record the date of the desposit, update credit and balance' do
    subject.deposit(1000) 
    expect(subject.transaction).to eq({ date: Time.new.strftime("%d/%m/%Y"), credit: 1000, debit: 0, balance: 1000 })
  end

  it 'can record date of the withdrawel, updated debit and balance' do
    subject.deposit(1000)
    subject.withdraw(500)
    expect(subject.transaction).to eq({ date: Time.new.strftime("%d/%m/%Y"), credit: 0, debit: 500, balance: 500 })
  end

  it 'prevents the user from withdrawing more money than is in the account' do
    expect { subject.withdraw(500) }.to raise_error( "Insufficient Funds please withdraw a lesser amount" )
  end

end
