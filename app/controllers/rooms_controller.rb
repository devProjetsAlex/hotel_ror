class RoomsController < ApplicationController  

  def index
    @rooms = Room.all
  end
  
  def show
    @room = Room.find(params[:id])
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(params.require(:room).permit(:room_name, :room_description, :room_vue, :room_price, :room_vacancy))
    if @room.save
      flash[:notice] = "Room was successfully saved! "
      redirect_to @room
    else
      render 'new'
    end
  end

end
