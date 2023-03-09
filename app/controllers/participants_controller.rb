class ParticipantsController < ApplicationController
  before_action :set_participant, only: %i[show]
  def index
    @participants = Participant.all
  end

  def show; end

  private

  def participant_params
    params.require(:participant).permit(:title, :theme, :date, :location, :description, :capacity, :status, :tricount, :password, :photo)
  end

  def set_participant
    @participant = Participant.find(params[:id])
  end
end
