class AddEquipotoPrestamo < ActiveRecord::Migration
  def change
    add_reference :prestamos, :equipo, index: true
  end
end
