json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :rut, :nombre, :apellido, :correo_institucional
  json.url cliente_url(cliente, format: :json)
end
