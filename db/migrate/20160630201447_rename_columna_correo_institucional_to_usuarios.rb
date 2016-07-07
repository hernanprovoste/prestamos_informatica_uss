class RenameColumnaCorreoInstitucionalToUsuarios < ActiveRecord::Migration
  def change
    rename_column :Usuarios, :correo_institucional, :email
  end
end
