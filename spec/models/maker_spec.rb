require 'rails_helper'

RSpec.describe Maker do

  it {should have_many :models}

  describe 'instance methods' do
    describe '' do
      before :each do
        @mesa = Artist.create!(name: 'Mesa')
        @stiletto = @mesa.models.create!(name: 'Stiletto')
        @rectifier= @mesa.models.create!(name: 'Rectifier')
      end
      it '' do
        expect(@mesa).to eq()
      end
    end

  end

end
