class AddClientetoPrestamo < ActiveRecord::Migration
  def change
    add_reference :prestamos, :cliente, index: true
  end
end
