class MerchantFacade
  def self.five_merchants
    merchant_data = MerchantService.five_merchants
    # binding.pry
    merchant_data.map do |merchant_json|
      Merchant.new(merchant_json)
    end
  end

  def self.find_merchant(id)
    # binding.pry
    merchant_data = MerchantService.find_merchant(id)

    Merchant.new(merchant_data)
  end

  def self.get_items(id)
    items = MerchantService.get_items(id)

    items.map do |item_json|
      Item.new(item_json)
    end
  end

end
