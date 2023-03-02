  class BookingsController < ApplicationController
    def index
      @bookings = Booking.all
    end

    def show
      @booking = Booking.find(params[:id])
    end

    def new
      @event = Event.find_by(id: params[:event_id])
      @booking = Booking.new
    end

    def create
      @booking = current_user.bookings.new(booking_params)
      @booking.event_id = params[:event_id]
      @event = Event.find_by(id: @booking.event_id)
      @booking.total_price = calculate_total_price(@booking)
      if @booking.save
        redirect_to root_url
      else
        render 'new'
      end
    end

    def edit
      @booking = Booking.find(params[:id])
    end

    def update
      @booking = Booking.find(params[:id])
      if @bookng.update(booking_params)
        redirect_to booking_path(@booking)
      else
        render 'edit'
      end
    end

    def destroy
      @booking = Booking.find(params[:id])
      @booking.destroy
      redirect_to booking_path
    end

    private

    def booking_params
      params.require(:booking).permit(:event_id, :pax, :pax_vip, :total_price)
    end

    def calculate_total_price(booking)
      event = booking.event
      normal_price = event.present? ? event.price_normal : 0
      vip_price = event.present? ? event.price_vip : 0
      total_price = (normal_price * booking.pax.to_i) + (vip_price * booking.pax_vip.to_i)
      return total_price
    end
  end
