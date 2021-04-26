class Filter
	def bandpass(input)
		@output = []
		input.each do |freq|
			range(freq)
		end
		@output
	end

private

	def range(input)
		if input > 1000
			@output << 1000
		elsif input < 40
			@output << 40
		else
			@output << input
		end
	end
end