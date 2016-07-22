class EntregasController < ApplicationController
  before_action :require_user, only: [:index, :show]

  def create
    @prestamo = Prestamo.find(params[:prestamo_id])
    @entrega.usuario_id = current_user.id if current_user
    @entrega = @prestamo.entregas.create(entrega_params)
    redirect_to prestamo_path(@prestamo)
  end

  private

    def entrega_params
      params.require(:entrega).permit(:descripcion, :fechaEntrega, :prestamo_id, :usuario_id)
    end
end
