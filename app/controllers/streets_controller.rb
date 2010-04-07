class StreetsController < ApplicationController

  def index
    @streets = Street.all
  end

  def new
    @street = Street.new
    render :action => 'new_or_edit'
  end

  def create
    street = Street.new(params[:street])
    if street.save
      flash[:notice] = 'Calle guardada'
    else
      flash[:error] = 'Ocurrió un error al intentar guardar la información'
    end
    redirect_to streets_path
  end

end

