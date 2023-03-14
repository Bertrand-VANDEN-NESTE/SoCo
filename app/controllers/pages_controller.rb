class PagesController < ApplicationController
  before_action :set_participant, only: %i[destroy]

  def home; end

  def profile
    @events = Event.all.where("user_id = #{current_user.id}")
    @participants = Participant.where(user: current_user)
  end

  def destroy
    @participant.destroy
    redirect_to profile_path, status: :see_other
  end

  def image(image)
  
    @event = Event.find(params[:event_id])
    @event.image.purge
    redirect_to profile_path, status: :see_other
  end

  private

  def set_participant
    @participant = Participant.find(params[:id])
  end
end
