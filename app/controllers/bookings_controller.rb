class BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings
    @events = Event.all
    # @artists = Artist.all
  end

  def bookings
    @bookingsall = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.price = @events.price + @artists.price
    @booking.user_id = current_user.id
    if @booking.save
      redirect_to bookings_path(@booking)
    else
      redirect_to root_path
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      redirect_to booking_path(@booking[:id])
    else
      render :edit
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path, status: :see_other
  end

  private

  def booking_params
    params.require(:booking).permit(:pax, :booking_type, :total_price, :event_id)
  end
end
