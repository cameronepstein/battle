require 'player'

describe Player do
	subject (:cameron) {Player.new('Cameron')}
	subject (:merve) {Player.new('Merve')}


	describe '#name' do
		it 'returns the name' do
			expect(cameron.name).to eq 'Cameron'
		end

	describe '#reduce_HP' do
		it "Reduced players HP after attack" do 
			cameron.attack(merve)
			expect(merve.hp).to eq 50
		end
	end
end
end
