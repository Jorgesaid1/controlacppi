class EmpleadosController < ApplicationController
  def index
    @empleados = Empleado.all
  end

  def show
    @empleado = Empleado.find(params[:id])
  end

  private
  def empleado_params
    params.require(:empleado).permit(:nombres)
  end
end
