require 'rails_helper'

RSpec.describe 'Makers index' do
  before :each do
    @toyota = Maker.create!(name: 'Toyota')
    @supra = @toyota.vehicles.create!(name: 'Supra')
    @gt86= @toyota.vehicles.create!(name: 'GT86')
  end

  it 'shows all makers' do
    visit "/makers"

    expect(page).to have_content(@toyota.name)
  end

end
