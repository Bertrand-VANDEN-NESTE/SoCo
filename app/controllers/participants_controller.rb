class ParticipantsController < ApplicationController
  before_action :set_participant, only: %i[show destroy]

  def index
    @participants = Participant.all
  end

  def show
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
