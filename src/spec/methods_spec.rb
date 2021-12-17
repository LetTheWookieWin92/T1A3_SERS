require_relative '../methods'

describe 'class data retrieval from programs' do

    it 'it should return the correct class details' do
        expect(getClass("PSYC5749")["name"]).to eq "Perceptual Systems"
    end

    it 'it should return the correct class details' do
        expect(getClass("BIOL3467")["name"]).to eq "Life and Evolution"
    end

end

