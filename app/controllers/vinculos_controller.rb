class VinculosController < ApplicationController
  def new
    @empleado = Empleado.find(params[:empleado_id])
    @homeoffice = Homeoffice.find(params[:homeoffice_id])
    @registroho = Registroho.find(params[:registroho_id])
    @vinculo = Vinculo.new
  end

  def create
    @empleado = Empleado.find(params[:empleado_id])
    @homeoffice = Homeoffice.find(params[:homeoffice_id])
    @registroho = Registroho.find(params[:registroho_id])
    @vinculo = Vinculo.new(vinculo_params)
    @vinculo.registroho = @registroho
    if @vinculo.save
      redirect_to empleado_path(@empleado)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def vinculo_params
    params.require(:vinculo).permit(:comentarios, :num_horas, :actividad_id)
  end
end
