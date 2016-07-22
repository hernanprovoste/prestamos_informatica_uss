class Equipo < ActiveRecord::Base
  belongs_to :tipo
  belongs_to :marca
  has_many :prestamos
end
