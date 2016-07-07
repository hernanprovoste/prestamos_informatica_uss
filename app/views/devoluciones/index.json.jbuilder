json.array!(@devoluciones) do |devolucione|
  json.extract! devolucione, :id, :descripcion, :fechaDevolucion, :prestamo_id
  json.url devolucione_url(devolucione, format: :json)
end
