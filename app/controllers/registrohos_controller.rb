class RegistrohosController < ApplicationController
  def new
    @empleado = Empleado.find(params[:empleado_id])
    @homeoffice = Homeoffice.find(params[:homeoffice_id])
    @registroho = Registroho.new
  end

  def create
    @empleado = Empleado.find(params[:empleado_id])
    @homeoffice = Homeoffice.find(params[:homeoffice_id])
    @registroho = Registroho.new(registroho_params)
    @registroho.homeoffice = @homeoffice
    if @registroho.save
      redirect_to empleado_path(@empleado)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def registroho_params
    params.require(:registroho).permit(:hora_entrada, :hora_salida)
  end
end
