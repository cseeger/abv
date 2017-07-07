class FilterBeverage
  include Interactor

  def call
    filter = context.type_filter

    case filter
      when 'beer'
        context.beverages = Beverage.where(beverage_type: 'beer')
      when 'wine'
        context.beverages = Beverage.where(beverage_type: 'wine')
      else
        context.beverages = Beverage.all
    end
  end
end