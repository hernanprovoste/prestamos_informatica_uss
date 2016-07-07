class EliminarTablaDevolucion < ActiveRecord::Migration
  def change
    drop_table :devolucions
  end
end
