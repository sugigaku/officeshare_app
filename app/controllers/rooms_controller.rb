class RoomsController < ApplicationController
  def show
    @room = Room.find(params[:id])
    @message = Message.new
    @messages = Message.where(room_id: @room.id)
  end

  def create
    @room = Room.new(student_id: session[:student_id], post_id: params[:post_id])
    if @room.save
      redirect_to room_path(@room.id)
    else 
      @eroom = Room.where(student_id: session[:student_id], post_id: params[:post_id])
      redirect_to room_path(@eroom.id)
    end

  end

end
