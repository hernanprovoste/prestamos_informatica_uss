json.array!(@marcas) do |marca|
  json.extract! marca, :id, :nombre
  json.url marca_url(marca, format: :json)
end
