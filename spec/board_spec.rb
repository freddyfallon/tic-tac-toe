require 'board'
describe Board do
  describe '#grid' do
    it 'should be an array of empty values' do
      expect(subject.grid).to eq ["", "", "",
                                  "", "", "",
                                  "", "", ""]
    end
  end
end
