require 'rails_helper'

describe FilterBeverage do
  describe '.call' do
    let!(:brewery) { FactoryGirl.create(:producer, :brewery) }
    let!(:beer1) { FactoryGirl.create(:beverage, :beer, producer: brewery) }
    let!(:beer2) { FactoryGirl.create(:beverage, :beer, producer: brewery, name: 'Poppy Pils') }

    let!(:vineyard) { FactoryGirl.create(:producer, :vineyard) }
    let!(:wine1) { FactoryGirl.create(:beverage, :wine, producer: vineyard) }

    context 'with no filter' do
      it 'returns all beverages' do
        context = FilterBeverage.call
        expect(context.beverages.count).to eq 3
      end
    end

    context 'with beer filter' do
      it 'returns only beers' do
        context = FilterBeverage.call(type_filter: 'beer')
        expect(context.beverages.count).to eq 2
        expect(context.beverages).to include(beer1, beer2)
      end
    end

    context 'with wine filter' do
      it 'returns only wines' do
        context = FilterBeverage.call(type_filter: 'wine')
        expect(context.beverages.count).to eq 1
        expect(context.beverages).to include(wine1)
      end
    end
  end
end
