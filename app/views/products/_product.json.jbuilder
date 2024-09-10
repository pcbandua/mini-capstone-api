json.name product.name
  json.id product.id
  json.name product.name
  json.price product.price
  json.description product.description
  json.created_at product.created_at
  json.updated_at product.updated_at

  json.images product.images do |image|
  json.url image.url
  json.created_at image.created_at