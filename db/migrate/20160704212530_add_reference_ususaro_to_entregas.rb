class AddReferenceUsusaroToEntregas < ActiveRecord::Migration
  def change
    add_reference :entregas, :usuario, index: true
  end
end
