json.array!(@products) do |product|
  json.extract! product, :id, :name, :properties, :price, :link
  json.url product_url(product, format: :json)
end
