class AddReferenceEntregaToPrestamo < ActiveRecord::Migration
  def change
    add_reference :entregas, :prestamo, index: true
  end
end
