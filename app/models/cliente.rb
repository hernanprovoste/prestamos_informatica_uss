class Cliente < ActiveRecord::Base
  has_many :prestamos

  def nombre_con_apellido
    "#{nombre} #{apellido}"
  end
end
