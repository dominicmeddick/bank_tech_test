# frozen_string_literal: true

require 'transaction'

describe Transaction do
  let(:transaction) { Transaction.new }

  it 'should record the four keys of the given criteria' do
    expect(transaction.record.keys).to eq %i[date credit debit balance]
  end

  it 'should record the four values of the given criteria' do
    expect(transaction.record.values).to eq [nil, nil, nil, nil]
  end
end
