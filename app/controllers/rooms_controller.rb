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

  def edit
    @room = Room.find(params[:id])
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


  def update
    @room = Room.find(params[:id])
    if @room.update(params.require(:room).permit(:room_name, :room_description, :room_vue, :room_price, :room_vacancy))
      flash[:notice] = "La chambre a été modifiée."
      redirect_to @room
    else
      render 'edit'
    end
  end

  def destroy
    @room = Room.find(params[:id])
    @room.destroy
    redirect_to rooms_path
  end 

end
