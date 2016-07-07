class CreateDevoluciones < ActiveRecord::Migration
  def change
    create_table :devoluciones do |t|
      t.text :descripcion
      t.datetime :fechaDevolucion
      t.references :prestamo, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
