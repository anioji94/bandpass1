require 'filter'

describe Filter do
	describe '#bandpass' do
		context 'when taking single inputs' do
			it 'should return lower limit when input is too low' do
				expect(subject.bandpass([0])).to eq([40])
			end

			it 'should return upper limit when input is too high' do
				expect(subject.bandpass([2000])).to eq([1000])
			end

			it 'should return same input when in range' do
				expect(subject.bandpass([500])).to eq([500])
			end
		end

		context 'when taking multiple inputs' do
			it 'should return the same input when in range' do
				expect(subject.bandpass([500, 500])).to eq([500, 500])
			end

			it 'should return the lower limit when one frequency is too low' do
				expect(subject.bandpass([500, 10])).to eq([500, 40])
			end

			it 'should return the upper limit when one frequency is too high' do
				expect(subject.bandpass([500,2000])).to eq([500,1000])
			end
		end
	end
end