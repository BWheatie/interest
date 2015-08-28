class PinsController < ApplicationController
  def create
    authenticate user!
    @pin = Pin.new(pin_params)
    if @pin.save
      render :json => @pin
    else
      render :json => { :errors => @pin.errors }, :status => 422
    end
  end

  def show
    @pin = Pins.all
  end

  private

  def pin_params
    params.require(:pin).permit(:url, :notes)
  end
end
