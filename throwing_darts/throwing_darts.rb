class Darts
	def self.score_throws(radiuses)
		if radiuses.empty?
			0
		else
			proc = Proc.new do |r,v| 
			if r > 10
				0
			elsif r >= 5 && r <= 10
				5
			elsif r < 5
				10	
			end

		end

			score = radiuses.each.inject(0) {|sum,val| sum += proc.call(val)}
			
			radiuses.select {|x| x < 5}.count == radiuses.count ? score += 100 : score
		end

	end
end