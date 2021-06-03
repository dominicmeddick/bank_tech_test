# frozen_string_literal: true

require 'bank'

describe Bank do
  let(:bank) { Bank.new }
  
  it 'can make a deposit of 1000' do
    bank.deposit(1000)
    expect(bank.balance).to eq(1000)
  end

  it 'can withdraw 500' do
    bank.deposit(1000)
    bank.withdraw(500)
    expect(bank.balance).to eq(500)
  end

  it 'can record the date of the desposit, update credit and balance' do
    bank.deposit(1000)
    expect(bank.transaction).to eq([{ date: Time.new.strftime('%d/%m/%Y'), credit: '1000.00', debit: 0.00,
                                      balance: '1000.00' }])
  end

  it 'can record date of the withdrawel, updated debit and balance' do
    bank.deposit(1000)
    bank.withdraw(500)
    expect(bank.transaction).to eq([
                                     { date: Time.new.strftime('%d/%m/%Y'), credit: '1000.00', debit: 0.00,
                                       balance: '1000.00' }, { date: Time.new.strftime('%d/%m/%Y'), credit: 0.00, debit: '500.00', balance: '500.00' }
                                   ])
  end

  it 'prevents the user from withdrawing more money than is in the account' do
    expect { bank.withdraw(500) }.to raise_error('Insufficient Funds please withdraw a lesser amount')
  end
end
