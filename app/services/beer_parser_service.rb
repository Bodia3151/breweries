class BeerParserService
  def self.parse(beers_data)
    beers_data.map do |beer_data|
      Beer.new(
        id: beer_data['id'],
        name: beer_data['name'],
        brewery_type: beer_data['brewery_type'],
        address_1: beer_data['address_1'],
        city: beer_data['city'],
        country: beer_data['country'],
        phone: beer_data['phone'],
        website_url: beer_data['website_url'],
        )
    end
  end
end
