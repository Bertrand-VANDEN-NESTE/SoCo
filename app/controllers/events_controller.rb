class EventsController < ApplicationController
  before_action :set_event, only: %i[show destroy edit update]
  def home; end

  def index
    if params[:query]
      @events = Event.global_search(params[:query])
    else
      @events = Event.all
    end

    @markers = @events.geocoded.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude
      }
    end
  end

  def show
    @event_ratings = @event.event_ratings
    @participants = Participant.all
    @participant = Participant.new
    @event_rating = EventRating.new
    @event_marker =
      {
        lat: @event.latitude,
        lng: @event.longitude
      }
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    if @event.save
      Chatroom.create!(event: @event)
      redirect_to events_path

    else
      @event.participant
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @event.update(event_params)
    redirect_to event_path(@event)
  end

  def edit; end

  def destroy
    @event.destroy
    redirect_to events_path, status: :see_other
  end

  private

  def event_params
    params.require(:event).permit(:title, :theme, :date, :location, :description, :capacity, :status, :tricount, :password, :photo, images:[])
  end

  def set_event
    @event = Event.find(params[:id])
  end
end
