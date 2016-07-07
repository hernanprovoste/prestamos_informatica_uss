class CreateEntregas < ActiveRecord::Migration
  def change
    create_table :entregas do |t|
      t.text :descripcion
      t.datetime :fechaEntrega
      t.references :devolucion, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
