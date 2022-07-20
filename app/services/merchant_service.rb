class MerchantService


  def self.five_merchants
    response = connection.get("/api/v1/merchants")
    hash = JSON.parse(response.body, symbolize_names: true)
    hash[:data].first(5)
  end

  def self.find_merchant(id)
    response = connection.get("/api/v1/merchants/#{id}")
    hash = JSON.parse(response.body, symbolize_names: true)
    hash[:data]
  end

  def self.get_items(id)
    response = connection.get("/api/v1/merchants/#{id}/items")
    hash = JSON.parse(response.body, symbolize_names: true)
    hash[:data].first(3)
    # binding.pry
  end

  def self.connection
    Faraday.new("http://localhost:3000")
  end

end
