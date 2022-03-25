require 'rails_helper'

RSpec.describe 'Makers show' do
  before :each do
    @toyota = Maker.create!(name: 'Toyota', usa_market?: true, market_share: 14.78)
    #@supra = @toyota.vehicles.create!(name: 'Supra')
    #@gt86= @toyota.vehicles.create!(name: 'GT86')
  end

  it 'shows all data for maker' do
    visit "/makers/#{@toyota.id}"

    expect(page).to have_content(@toyota.name)
    expect(page).to have_content(@toyota.usa_market?)
    expect(page).to have_content(@toyota.market_share)
  end

end
