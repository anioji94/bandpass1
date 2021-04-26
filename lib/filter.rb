class Filter
	def bandpass(input)
		if input[0] > 1000
			return [1000]
		elsif input[0] < 40
			return [40]
		end
	end
end