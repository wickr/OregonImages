class CulturalPropertiesController < ApplicationController
  def index
    @cps = CulturalProperty.all
  end

  def show
    @cp = CulturalProperty.find(params[:id])
  end

  def new
    @cp = CulturalProperty.new
  end

  def edit
    @cp = CulturalProperty.find(params[:id])
  end

  def create
    @cp = CulturalProperty.new(cp_params)
 
    if @cp.save
      redirect_to @cp
    else
      render 'new'
    end
  end

  def update
    @cp = CulturalProperty.find(params[:id])
  
    if @cp.update(cp_params)
      redirect_to @cp
    else
      render 'edit'
    end
  end

  def destroy
    @cp = CulturalProperty.find(params[:id])
    @cp.destroy
  
    redirect_to cps_path
  end

  private
    def cp_params
      params.require(:cultural_property).permit(:title, :description, :location_id)
    end
end
