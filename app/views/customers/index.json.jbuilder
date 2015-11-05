json.array!(@customers) do |customer|
  json.extract! customer, :id, :name, :number, :website, :business
  json.url customer_url(customer, format: :json)
end
