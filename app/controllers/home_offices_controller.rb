class HomeOfficesController < ApplicationController
  def new
  @empleado = Empleado.find(params[:empleado_id])
  @homeoffice
  end
end
