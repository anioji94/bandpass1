require 'filter'

describe Filter do
	describe '#bandpass' do
		context 'when taking single inputs' do
			it 'should take an input of 0 and return 40' do
				expect(subject.bandpass([0])).to eq([40])
			end

			it 'should take an input of 2000 and return 1000' do
				expect(subject.bandpass([2000])).to eq([1000])
			end
		end
	end
end