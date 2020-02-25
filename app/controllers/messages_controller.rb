class MessagesController < ApplicationController
  
  def create
    @message=Message.new(message_params)
    if @message.save
      redirect_to room_path(@message.room_id)
    else
      @room = Room.find(@message.room_id)
      @messages = Message.where(room_id: @room.id)
      render template: 'rooms/show'
    end
  end

  private
  def message_params
    params.require(:message).permit(:content, :user_type, :room_id)
  end


end
