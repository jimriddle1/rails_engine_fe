class MerchantService
  #
  # def self.search_house_by_state(state)
  #
  #   conn = Faraday.new(url: "https://api.propublica.org") do |faraday|
  #     faraday.headers["X-API-KEY"] = ENV['govt_api_key']
  #   end
  #
  #   response = conn.get("/congress/v1/members/house/#{state}/current.json")
  #
  #   json = JSON.parse(response.body, symbolize_names: true)
  # end

  def self.five_merchants
    response = connection.get("/api/v1/merchants")
    hash = JSON.parse(response.body, symbolize_names: true)
    # binding.pry
    hash[:data].first(5)
  end

  def self.connection
    Faraday.new("http://localhost:3000")
  end

end
