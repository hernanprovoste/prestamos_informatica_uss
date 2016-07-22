class Prestamo < ActiveRecord::Base
  belongs_to :cliente
  belongs_to :equipo
  belongs_to :usuario
  has_many :entregas
  has_many :devoluciones

  # Verifica si el ID del equipo se encuentra prestado.
  validates_uniqueness_of :equipo_id, message: "se encuentra prestado.", conditions: -> {where(estado: 'Prestado')}
  validates_presence_of :equipo_id, message: "Por favor seleccione un equipo"
  validates_presence_of :cliente_id, message: "Por favor seleccione a cliente"
end
