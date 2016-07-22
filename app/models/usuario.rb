class Usuario < ActiveRecord::Base
  has_secure_password
  has_many :prestamos
  has_many :devoluciones
end
