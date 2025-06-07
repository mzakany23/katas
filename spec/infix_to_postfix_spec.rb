require_relative '../infix_to_postfix/kata'

describe 'InfixToPostfix' do
  it 'converts expression with mixed operators' do
    expect(to_postfix('2*3-4/5')).to eq('23*45/-')
  end

  it 'handles parentheses' do
    expect(to_postfix('3*3/(7+1)')).to eq('33*7(1)+/')
  end
end
