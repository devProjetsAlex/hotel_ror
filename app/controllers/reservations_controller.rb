class ReservationsController < ApplicationController

  def show
        @reservation = Reservation.find(params[:id])
    end

    def index
        @reservations = Reservation.all
    end

    def new
      @reservation = Reservation.new
    end

    def edit
      @reservation = Reservation.find(params[:id])
    end


    def create
      @reservation = Reservation.new(params.require(:reservation).permit(:date, :room, :client_id, :client_email, :client_request))
      if @reservation.save
        flash[:notice] = "La réservation a été enregistrée."
        redirect_to @reservation
      else
        render 'new'
      end
    end 

    def update
      @reservation = Reservation.find(params[:id])
      if @reservation.update(params.require(:reservation).permit(:date, :room, :client_id, :client_email, :client_request))
        flash[:notice]= "La réservation a été modifié"
        redirect_to @reservation
      else
        render 'edit'
      end
    end
    

end