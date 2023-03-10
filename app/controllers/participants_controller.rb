class ParticipantsController < ApplicationController
  before_action :set_participant, only: %i[show destroy edit update]
  def home; end

  def index
    @participants = Participant.all
  end

  def show; end

  def new
    @participant = Participant.new
  end

  def create
    @participant = Participant.new(participant_params)
    @participant.user = current_user
    if @participant.save
      redirect_to participants_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @participant.update(participant_params)
    redirect_to participant_path(@participant)
  end

  def edit; end

  def destroy
    @participant.destroy
    redirect_to profile_path, status: :see_other
  end

  private

  def participant_params
    params.require(:participant).permit(:title, :theme, :date, :location, :description, :capacity, :status, :tricount, :password, :photo)
  end

  def set_participant
    @participant = Participant.find(params[:id])
  end
end
