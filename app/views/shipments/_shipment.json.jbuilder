json.extract! shipment, :id, :product, :comment, :price, :count, :created_at, :updated_at
json.url shipment_url(shipment, format: :json)
