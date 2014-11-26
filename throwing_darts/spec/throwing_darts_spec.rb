require_relative "../throwing_darts"

describe 'Throwing Darts' do 
	before do 
		@zero  = [15,15]
		@ten   = [5,10]
		@five  = [2,20]
		@bonus = [4,4]
		@empty = []
		@arr   = [1,2,3,4]
	end

	it 'above 10' do 
		expect(Darts.score_throws(@zero)).to eq(0)
	end

	it 'between 5 and 10' do 
		expect(Darts.score_throws(@ten)).to eq(10)
	end

	it 'less than 5' do 
		expect(Darts.score_throws(@five)).to eq(10)
	end

	it 'has bonus' do 
		expect(Darts.score_throws(@bonus)).to eq(120)
	end

	it 'empty' do 
		expect(Darts.score_throws(@empty)).to eq(0)
	end

	it '140' do 
		expect(Darts.score_throws(@arr)).to eq(140)
	end


end