class CarsController < ApplicationController
  def index
    @car = Car.all
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)

    if @car.save
      flash[:notice] = "Successfully created car"
      redirect_to cars_path
    else
      flash[:notice] = "Please input valid information"
      render :new
    end
  end

  private

  def car_params
    params.require(:car).permit(:color, :year, :mileage)
  end
end
