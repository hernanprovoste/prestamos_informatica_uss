class AddTipotoEquipo < ActiveRecord::Migration
  def change
    add_reference :equipos, :tipo, index: true
  end
end
