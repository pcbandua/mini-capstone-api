
  json.id product.id
  json.name product.name
  json.price product.price
  json.description product.description
  json.created_at product.created_at
  json.updated_at product.updated_at

  json.id supplier.id 
  json.name supplier.name
  json.email supplier.email
  json.phone_number supplier.phone_number
  json.created_at supplier.created_at
  json.updated_at supplier.updated_at

  json.images product.images do |image|
  json.id images.id 
  json.url image.url
  json.product_id image.product_id
  json.created_at image.created_at
  json.updated_at images.updated_at
  end
