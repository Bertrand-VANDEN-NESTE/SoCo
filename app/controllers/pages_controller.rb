class PagesController < ApplicationController
  def home; end

  def profile
    @events = Event.all.where("user_id = #{current_user.id}")
    @participant = Participant.where(user: current_user)
  end
end
