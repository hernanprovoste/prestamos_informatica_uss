class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :apellido
      t.string :correo_institucional
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
