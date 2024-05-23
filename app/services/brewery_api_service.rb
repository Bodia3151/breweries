class BreweryApiService
  class << self
    API_URL = 'https://api.openbrewerydb.org/v1/breweries'

    def fetch_beers(name: nil, limit: 10)
      uri = URI(API_URL)
      params = { per_page: limit }
      params[:by_name] = name if name.present?
      uri.query = URI.encode_www_form(params)

      response = Net::HTTP.get(uri)
      beers_data = JSON.parse(response)

      BeerParserService.parse(beers_data)
    end
  end
end