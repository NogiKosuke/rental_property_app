class PropertiesController < ApplicationController
  def index
    @properties = Property.all
  end

  def new
    @property = Property.new
  end

  def create
    @property = Property.new(property_params)
    @property.save
    redirect_to properties_path
  end

  private

  def property_params
    params.require(:property).permit(:name, :rent, :adress, :age, :remark)
  end
end
