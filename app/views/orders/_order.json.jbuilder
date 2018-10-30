json.extract! order, :id, :user_id, :shipping_address, :product_id, :product_title, :product_price, :quantity, :created_at, :updated_at
json.url order_url(order, format: :json)
