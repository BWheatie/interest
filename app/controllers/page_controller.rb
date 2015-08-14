class PageController < ApplicationController
  respond_to :html, :xml, :json

  def index
    @pins = Pin.all
    @pin = Pin.new
  end

  def create
    @pin = Pin.new( params[:pin] )
    if @pin.save
      respond_with do |format|
        format.html do
          if request.xhr?
            render :partial => "pin/index", :locals => { :pin => @pin }, :layout => false, :status => :created
          else
            redirect_to @pin
          end
        end
      end
    else
      respond_with do |format|
        format.html do
          if request.xhr?
            render :json => @pin.errors, :status => :unprocessable_entity
          else
            render :action => :new, :status => :unprocessable_entity
          end
        end
      end
    end
  end
end