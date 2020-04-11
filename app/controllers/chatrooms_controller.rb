class ChatroomsController < ApplicationController
  def index
    @chatrooms = Chatroom.all
  end

  def show
    @chatroom = Chatroom.find_by(topic: params[:topic])
    @message = Message.new
  end
end