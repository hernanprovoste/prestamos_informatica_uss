class AddUsuariotoPrestamo < ActiveRecord::Migration
  def change
    add_reference :prestamos, :usuario, index: true
  end
end
