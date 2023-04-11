class PropertiesController < ApplicationController
  def index

  end

  def new
    @property = Property.new
  end

  def create
    @property = Property.new(property_params)
    @property.save
  end

  private

  def property_params
    params.require(:property).permit(:name, :rent, :adress, :age, :remark)
  end
end
