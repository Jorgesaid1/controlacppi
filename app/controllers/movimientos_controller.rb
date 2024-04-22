class MovimientosController < ApplicationController
  def new
    @empleado = Empleado.find(params[:empleado_id])
    @movimiento = Movimiento.new
  end

  def create
    @empleado = Empleado.find(params[:empleado_id])
    @movimiento = Movimiento.new(movimiento_params)
    @movimiento.empleado = @empleado
    if @movimiento.save
      redirect_to empleado_path(@empleado)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def movimiento_params
    params.require(:movimiento).permit(:hora_entrada, :hora_salida, :fecha_registro)
  end
end
