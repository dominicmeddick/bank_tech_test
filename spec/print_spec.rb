# frozen_string_literal: true

require 'print'

describe Print do

  let(:print) { Print.new }

  it 'should print the users transactions' do
    transactions = [{ date: 'date', credit: 20, debit: '||',
                      balance: 20 }]
    expect do
      print.print_transactions(transactions)
    end.to output("date || credit || debit || balance\ndate || 20 || || || 20\n").to_stdout
  end
end