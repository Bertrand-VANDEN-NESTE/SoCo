class ChatroomsController < ApplicationController
  def show
    @event = Event.find(params[:event_id])
    # @chatroom = Chatroom.find(params[:id])
    @chatroom = @event.chatroom
    @message = Message.new
  end
end
