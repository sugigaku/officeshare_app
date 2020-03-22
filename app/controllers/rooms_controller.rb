class RoomsController < ApplicationController
  before_action :access_restriction


  def show
    @room = Room.find(params[:id])
    @message = Message.new
    @messages = Message.where(room_id: @room.id)
  end


  def create
    @room = Room.new(student_id: @student.id, post_id: params[:post_id])
    if @room.save
      redirect_to room_path(@room.id)
    else 
      @eroom = Room.find_by(student_id: @student.id, post_id: params[:post_id])
      redirect_to "/rooms/#{@eroom.id}"
    end
  end

  
end
