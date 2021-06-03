# frozen_string_literal: true

require 'bank'

describe Bank do

  let(:bank) { Bank.new} 
  it 'can make a deposit of 1000' do
    expect(bank.deposit(1000)).to eq(1000)
  end

  it 'can withdraw 500' do
    bank.deposit(1000)
    expect(bank.withdraw(500)).to eq(500)
  end

  it 'can record the date of the desposit, update credit and balance' do
    bank.deposit(1000)
    expect(bank.transaction).to eq({ date: [Time.new.strftime('%d/%m/%Y')], credit: [1000], debit: [0], balance: 1000 })
  end

  it 'can record date of the withdrawel, updated debit and balance' do
    bank.deposit(1000)
    bank.withdraw(500)
    expect(bank.transaction).to eq({ date: [Time.new.strftime('%d/%m/%Y'),Time.new.strftime('%d/%m/%Y')], credit: [1000, 0], debit: [0, 500], balance: 500 })
  end

  it 'prevents the user from withdrawing more money than is in the account' do
    expect { bank.withdraw(500) }.to raise_error('Insufficient Funds please withdraw a lesser amount')
  end
end
