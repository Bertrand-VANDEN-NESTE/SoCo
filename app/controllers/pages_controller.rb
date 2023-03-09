class PagesController < ApplicationController
  def home; end

  def profile
    @events = Event.all.where("user_id = #{current_user.id}")
    @participants = Participant.where(user: current_user)
  end
end
