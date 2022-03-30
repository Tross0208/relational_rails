require 'rails_helper'
RSpec.describe 'Creating new Maker' do

  it 'links to the new page from the Maker index' do
    visit '/makers'

    click_link('New Maker')
    expect(current_path).to eq('/makers/new')
  end

  it 'can create a new Maker' do
    visit '/makers/new'

    fill_in('Name', with: 'Koenigsegg')
    select("true", from: "Usa market?")
    fill_in('Market share', with: 0)
    click_button('Create Maker')


    expect(current_path).to eq("/makers")
    expect(page).to have_content("Koenigsegg")
  end
end
