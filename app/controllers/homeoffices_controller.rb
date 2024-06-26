class HomeofficesController < ApplicationController
  def new
    @empleado = Empleado.find(params[:empleado_id])
    @homeoffice = Homeoffice.new
  end

  def create
    @empleado = Empleado.find(params[:empleado_id])
    @homeoffice = Homeoffice.new(homeoffice_params)
    @homeoffice.empleado = @empleado
    if @homeoffice.save
      redirect_to empleado_path(@empleado)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def homeoffice_params
    params.require(:homeoffice).permit(:fecha_homeoffice)

  end
end
