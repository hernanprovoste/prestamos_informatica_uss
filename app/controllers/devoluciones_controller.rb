class DevolucionesController < ApplicationController
  before_action :require_user, only: [:index, :show]
  before_action :set_devolucione, only: [:show, :edit, :update, :destroy]

  # GET /devoluciones
  # GET /devoluciones.json
  def index
    @devoluciones = Devolucione.all
  end

  # GET /devoluciones/1
  # GET /devoluciones/1.json
  def show
  end

  # GET /devoluciones/new
  def new
    @devolucione = Devolucione.new
  end

  # GET /devoluciones/1/edit
  def edit
  end

  # POST /devoluciones
  # POST /devoluciones.json
  def create
    @devolucione = Devolucione.new(devolucione_params)
    @prestamo = Prestamo.find(params[:prestamo_id])
    @devolucione = @prestamo.devoluciones.create(devolucione_params)
    @prestamo.update({estado: 'Devuelto'})
    redirect_to prestamo_path(@prestamo)

    #respond_to do |format|
    #  if @devolucione.save
    #    format.html { redirect_to @devolucione, notice: 'Devolucione was successfully created.' }
    #    format.json { render :show, status: :created, location: @devolucione }
    #  else
    #    format.html { render :new }
    #    format.json { render json: @devolucione.errors, status: :unprocessable_entity }
    #  end
    #end
  end

  # PATCH/PUT /devoluciones/1
  # PATCH/PUT /devoluciones/1.json
  def update
    respond_to do |format|
      if @devolucione.update(devolucione_params)
        format.html { redirect_to @devolucione, notice: 'Devolucione was successfully updated.' }
        format.json { render :show, status: :ok, location: @devolucione }
      else
        format.html { render :edit }
        format.json { render json: @devolucione.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /devoluciones/1
  # DELETE /devoluciones/1.json
  def destroy
    @devolucione.destroy
    respond_to do |format|
      format.html { redirect_to devoluciones_url, notice: 'Devolucione was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_devolucione
      @devolucione = Devolucione.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def devolucione_params
      params.require(:devolucione).permit(:descripcion, :fechaDevolucion, :prestamo_id, :usuario_id)
    end
end
