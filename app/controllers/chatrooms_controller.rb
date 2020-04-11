class ChatroomsController < ApplicationController
  def index
    @chatrooms = Chatroom.all
  end

  def create
    # intialize the chatroom
    chatroom = Chatroom.new(chatroom_params)

    # go back to index if save
    redirect_to chatroom_path(chatroom.topic) and return if chatroom.save

    # otherwise, go back to index
    redirect_to chatrooms_path
  end

  def show
    @chatroom = Chatroom.find_by(topic: params[:topic])
    @message = Message.new
  end

  def chatroom_params
    params.require(:chatroom).permit(:topic)
  end
end