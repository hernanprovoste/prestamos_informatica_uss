class SessionsController < ApplicationController
  def new
  end

  def create
    @usuario = Usuario.find_by_correo_institucional(params[:session][:correo_institucional])
    if @usuario && @usuario.authenticate(params[:session][:password])
      session[:usuario_id] = @usuario.id
      redirect_to '/'
    else
      redirect_to 'login'
    end
  end

  def destroy
    session[:usuario_id] = nil
    redirect_to '/'
  end
end
