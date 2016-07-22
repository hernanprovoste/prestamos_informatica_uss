class Entrega < ActiveRecord::Base
  belongs_to :prestamo
  belongs_to :usuario
end
