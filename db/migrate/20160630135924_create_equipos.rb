class CreateEquipos < ActiveRecord::Migration
  def change
    create_table :equipos do |t|
      t.string :codUss
      t.string :modelo
      t.string :serial

      t.timestamps null: false
    end
  end
end
