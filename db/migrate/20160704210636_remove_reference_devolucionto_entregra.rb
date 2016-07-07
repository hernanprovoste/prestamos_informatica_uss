class RemoveReferenceDevoluciontoEntregra < ActiveRecord::Migration
  def change
    remove_column :entregas, :devolucion_id
  end
end
