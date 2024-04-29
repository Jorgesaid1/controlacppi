class ActividadsController < ApplicationController
  def index
    @actividads = Actividad.all
  end

  def show
    @actividad = Actividad.find(params[:id])
  end

  def new
    @actividad = Actividad.new
  end

  def create
    @actividad = Actividad.new(actividad_params)
    if @actividad.save
      redirect_to actividad_path(@actividad)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @actividad = Actividad.find(params[:id])
  end

  def update
    @actividad = Actividad.find(params[:id])
    if @actividad.update(actividad_params)
      redirect_to actividad_path(@actividad)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @actividad = Actividad.find(params[:id])
    @actividad.destroy
    redirect_to actividads_path
  end

  private

  def actividad_params
    params.require(:actividad).permit(:nombre_actividad, :descripcion_actividad)
  end

end
