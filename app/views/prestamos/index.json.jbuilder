json.array!(@prestamos) do |prestamo|
  json.extract! prestamo, :id, :descripcion, :fechaPrestamo, :estado
  json.url prestamo_url(prestamo, format: :json)
end
