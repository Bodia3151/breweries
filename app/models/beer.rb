class Beer
  include ActiveModel::Model
  include ActiveModel::Attributes

  attribute :id, :integer
  attribute :name, :string
  attribute :brewery_type, :string
  attribute :address_1, :string
  attribute :city, :string
  attribute :country, :string
  attribute :phone, :string
  attribute :website_url, :string
end