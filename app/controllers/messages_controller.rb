class MessagesController < ApplicationController
  def index
    @message = Message.new
    @room = Room.find(params[:room_id])
    @room_message = @room.messages.content.includes(:user)
  end

  def create
    @room = Room.find(params)
    @message = @room.message.new(message_params)
    if @message.save
        redirect_to room_messages_path(@room)
    else
      @room_message = @room.messages.content.includes(:user)
      render :index
  end
end
  private
  def message_params
    params.require(:message).permit(:content, :image).merge(user_id: current_user.id)
end
