require 'bank'

describe Bank do
  
  it 'can make a deposit of 1000' do
    expect(subject.deposit).to eq(1000)
  end

end