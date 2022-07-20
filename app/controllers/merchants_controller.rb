class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.five_merchants
    # binding.pry
  end

  def show
    # binding.pry
    @merchant = MerchantFacade.find_merchant(params[:id])
    @items = MerchantFacade.get_items(params[:id])
    # binding.pry
  end
end
