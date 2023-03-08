class EventsController < ApplicationController
  before_action :set_event, only: %i[show destroy]
  def home; end
  
  def index
    @events = Event.all
  end


  def show; end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user = current.user
    if event.save
      redirect_to events_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @event.destroy
    redirect_to events_path, status: :see_other
  end

  private

  def event_params
    params.require(:event).permit(:title, :theme, :date, :location, :description, :capacity, :status, :tricount, :password, :photo)
  end

  def set_event
    @event = Event.find(params[:id])
  end

end
