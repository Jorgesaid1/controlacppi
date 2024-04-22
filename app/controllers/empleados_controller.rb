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
    if @empleado.save
      redirect_to empleado_path(@empleado)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @empleado = Empleado.find(params[:id])
  end

  def update
    @empleado = Empleado.find(params[:id])
    if @empleado.update(empleado_params)
      redirect_to empleado_path(@empleado)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @empleado = Empleado.find(params[:id])
    @empleado.destroy
    redirect_to empleados_path
  end

  private

  def empleado_params
    params.require(:empleado).permit(:nombres, :apellido_paterno, :apellido_materno, :rfc_corto, :administracion, :curp, :celular, :alergia, :ip_domicilio, :mac_adress, :cp_domicilio, :tipo_sangre, :padecimiento, :medicamento, :num_empleado)
  end

end
