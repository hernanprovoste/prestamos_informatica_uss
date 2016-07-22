class UsuariosController < ApplicationController
  def new
    @usuario = Usuario.new
  end

  def create
    @usuario = Usuario.new(usuario_params)
    if @usuario.save
      session[:usuario_id] = @usuario.id
      redirect_to '/'
    else
      redirect_to '/signup'
    end
  end

  private
    def usuario_params
      params.require(:usuario).permit(:nombre, :apellido, :correo_institucional, :password)
    end
end
