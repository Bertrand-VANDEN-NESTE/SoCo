class EventRatingsController < ApplicationController
  def new
    @event_rating = EventRating.new
    @event = Event.find(params[:event_id])
  end

  def create
    @event_rating = EventRating.new(event_rating_params)
    @event = Event.find(params[:event_id])
    @event_rating.user = current_user
    @event_rating.event = @event
    if @event_rating.save!
      redirect_to events_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def event_rating_params
    params.require(:event_rating).permit(:comment, :rating)
  end

end
