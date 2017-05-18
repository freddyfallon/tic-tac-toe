require 'player'

describe Player do
  subject(:player_1) {described_class.new('X')}
  subject(:player_2) {described_class.new('O')}
  
 describe '#mark' do
   it 'should be an X if given at instatiation' do
     expect(player_1.mark).to eq 'X'
   end

   it 'should be an O if given at instatiation' do
     expect(player_2.mark).to eq 'O'
   end
 end
end
