require_relative '../validation'

describe 'user input validation' do
    it 'it should only output a number' do
        expect(validate_option_selection("1", 2)).to eq 1
    end

    it 'if an invalid character is entered, it should produce a 0 to indicate error' do
        expect(validate_option_selection("dfgadf", 2)).to eq 0
    end
end

