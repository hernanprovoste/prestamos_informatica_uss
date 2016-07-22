class AddUserIDtoDevoluciones < ActiveRecord::Migration
  def change
    add_reference :devoluciones, :usuario, index: true
  end
end
