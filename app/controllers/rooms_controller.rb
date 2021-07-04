class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def new
    @room = Room.new 
  end

  def create
    @room = Room.create!(room_params)
    if @room.save
      flash[:notice] = "新規登録しました"
      redirect_to root_path
    else
      render "new"
    end
  end

  def update
  end
end

private
  #ストロングパラメーター
  def room_params
    params.permit(:room_name, :room_intr, :room_price,:room_place, :roomphoto)
  end



