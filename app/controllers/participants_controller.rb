class ParticipantsController < ApplicationController
  before_action :set_participant, only: %i[show destroy]

  def index
    @participants = Participant.all
  end

  def show; end

  def new
    @participant = Participant.new
  end

  def create
    @participant = Participant.new
    @event = Event.find(params[:participant][:event_id].to_i)
    @participant.user = current_user
    @participant.event = @event
    if @event.participants.count < @event.capacity
      @participant.save!
      @event.update(capacity: @event.capacity - 1)
      redirect_to profile_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @participant.update(participant_params)
    redirect_to participant_path(@participant)
  end

  def destroy
    @participant.destroy
    @event = @participant.event
    @event.update(capacity: @event.capacity + 1)
    redirect_to profile_path, status: :see_other
  end

  private

  def set_participant
    @participant = Participant.find(params[:id])
  end
end
