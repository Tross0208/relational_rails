require 'rails_helper'
RSpec.describe 'Update existing Maker' do
  before :each do
    @toyota = Maker.create!(name: 'Toyota', usa_market?: true, market_share: 14.78)
  end

  it 'Can update maker' do
    visit "makers/#{@toyota.id}"
    click_link "Update #{@toyota.name}"
    expect(current_path).to eq ("/makers/#{@toyota.id}/edit")
    fill_in 'name', with: 'Scion'
    click_button 'Update Maker'
    expect(current_path).to eq ("/makers/#{@toyota.id}")
    expect(page).to have_content('Scion')
    expect(page).to_not have_content('Toyota')
  end


end
