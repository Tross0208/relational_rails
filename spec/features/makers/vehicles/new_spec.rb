require 'rails_helper'
RSpec.describe 'Create new vehicle from maker' do
  before :each do
    @toyota = Maker.create!(name: 'Toyota', usa_market?: true, market_share: 14.78)
  end

  it 'Can create new Vehicle' do
    visit "makers/#{@toyota.id}/vehicles"
    click_link "Create Vehicle"
    expect(current_path).to eq ("/makers/#{@toyota.id}/vehicles/new")
    fill_in 'name', with: 'Prius'
    fill_in 'price', with: 24625
    click_button 'Create Vehicle'
    expect(current_path).to eq ("/makers/#{@toyota.id}/vehicles")
    expect(page).to have_content('Prius')
  end
end
