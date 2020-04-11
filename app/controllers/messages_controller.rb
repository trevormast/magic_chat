class MessagesController < ApplicationController

  def create
    message = Message.new(message_params)
    message.user = User.last
    if message.save

    else
      redirect_to chatrooms_path
    end
  end

  private

    def message_params
      params.require(:message).permit(:body, :chatroom_id)
    end
end