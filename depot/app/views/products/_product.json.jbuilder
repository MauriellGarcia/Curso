json.extract! product, :id, :title, :image_url, :precio, :created_at, :updated_at
json.url product_url(product, format: :json)
