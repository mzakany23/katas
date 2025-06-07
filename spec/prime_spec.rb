require_relative '../prime_without_prime_class_kata/prime'

describe 'Prime method' do
  it 'returns primes up to n' do
    expect(prime(10)).to eq([2,3,5,7])
  end
end
