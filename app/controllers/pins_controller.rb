class PinsController < ApplicationController
  def create
    @pin = Pin.new(pin_params)
    if @pin.save
      head :ok
    else
      head :bad_request
    end
  end

  private

  def pin_params
    params.require(:pin).permit(:url, :notes)
  end
end