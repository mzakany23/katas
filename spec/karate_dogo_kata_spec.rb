require_relative '../karate_dogo_kata/kata'

describe 'KarateDogoKata' do
  it 'finds existing value' do
    result = chop(2, [1,2,3])
    expect(result).to match(/PASS/)
  end

  it 'returns fail when not found' do
    result = chop(4, [1,2,3])
    expect(result).to match(/FAIL/)
  end
end
