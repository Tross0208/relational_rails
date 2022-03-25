require 'rails_helper'

RSpec.describe 'Artists songs index' do
  before :each do
    @toyota = Maker.create!(name: 'Toyota')
    @supra = @toyota.vehicles.create!(name: 'Supra')
    @gt86= @toyota.vehicles.create!(name: 'GT86')
  end

  it 'shows all vehicles for maker' do
    visit "/makers/#{@toyota.id}/vehicles"
    expect(page).to have_content(@supra.name)
    expect(page).to have_content(@gt86.name)
  end

end
