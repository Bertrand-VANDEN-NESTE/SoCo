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
    @participant.user_id = params["participant"]["user_id"].to_i
    @participant.event_id = params["participant"]["event_id"].to_i
    if @participant.save
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
    redirect_to profile_path, status: :see_other
  end

  private

  def set_participant
    @participant = Participant.find(params[:id])
  end
end
