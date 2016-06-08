
require 'spec_helper'

feature "attacking" do

	scenario 'reduce players HP by 10' do 
		sign_in_and_play
		click_button('Attack!')
		click_button("OK")
		expect(page).not_to have_content 'Camerve HP is: 60'
		expect(page).to have_content 'Camerve HP is: 50'
	end
end