class AddMarcatoEquipo < ActiveRecord::Migration
  def change
    add_reference :equipos, :marca, index: true
  end
end
