require_relative '../fizzbuzz/fizzbuzz'

describe 'FizzBuzz' do
  it 'prints FizzBuzz at multiples of 15' do
    expect { fizzbuzz }.to output(/FizzBuzz!/).to_stdout
  end
end
