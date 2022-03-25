require 'rails_helper'

RSpec.describe Maker do
  describe 'validations' do
    it { should validate_presence_of :name}
    it { should validate_presence_of :usa_market?}
    it { should validate_presence_of :market_share}
  end

  describe 'relationships' do
    it {should have_many :vehicles}
  end


  describe 'instance methods' do
    describe '' do
      before :each do
        @toyota = Maker.create!(name: 'Toyota')
        @supra = @toyota.vehicles.create!(name: 'Supra')
        @gt86= @toyota.vehicles.create!(name: 'GT86')
      end
      it '' do
        expect(@mesa).to eq()
      end
    end

  end

end
