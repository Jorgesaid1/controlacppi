class EmpleadosController < ApplicationController
  def index
    @empleados = Empleado.all
  end

  def show
    @empleado = Empleado.find(params[:id])
  end

  def new
    @empleado = Empleado.new
  end

  def create
    @empleado = Empleado.new(empleado_params)
    @empleado.save
  end

  private

  def empleado_params
    params.require(:empleado).permit(:nombres, :apellido_paterno, :apellido_materno, :rfc_corto, :administracion, :curp, :celular, :alergia, :ip_domicilio, :mac_adress, :cp_domicilio, :tipo_sangre, :padecimiento, :medicamento, :num_empleado)
  end

end
