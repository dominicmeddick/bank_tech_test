# frozen_string_literal: true

require 'transaction'

describe Transaction do
  let(:transaction) { Transaction.new }

  it 'should be an empty array' do
    expect(transaction.record).to be_empty
  end
end
