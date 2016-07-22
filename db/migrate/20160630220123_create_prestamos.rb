class CreatePrestamos < ActiveRecord::Migration
  def change
    create_table :prestamos do |t|
      t.text :descripcion
      t.datetime :fechaPrestamo
      t.string :estado

      t.timestamps null: false
    end
  end
end
