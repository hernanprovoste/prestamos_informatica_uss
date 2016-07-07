class AddIdPrestamotoDevolucion < ActiveRecord::Migration
  def change
    add_reference :devolucions, :prestamo, index: true
  end
end
