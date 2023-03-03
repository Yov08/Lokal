  class BookingsController < ApplicationController
    def index
      @bookings = Booking.all
    end

    def show
      @event = Event.find(params[:event_id])
      @booking = Booking.find(params[:id])
    end

    def new
      @event = Event.find_by(id: params[:event_id])
      @booking = Booking.new
    end

    def create
      @event = Event.find_by(id: params[:booking][:event_id])
      @booking = Booking.new(booking_params)
      @normal_total = @booking.pax * @booking.event.price_normal
      @vip_total = @booking.pax_vip * @booking.event.price_vip
      @price_total = @normal_total + @vip_total
      @booking.total_price = @price_total
      # @booking.event_id = @event.id
      # @event = Event.find_by(id: @booking.event_id)
      @booking.user_id = current_user.id
      @booking.event_id = @event.id
      if @booking.save!
        redirect_to booking_confirmation_path
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

    # def confirmation
      # @booking = Booking.find(params[:booking_id])
      # @event = @booking.event
    # end

    private

    def booking_params
      params.require(:booking).permit(:event_id, :pax, :pax_vip)
    end

    # def calculate_total_price(booking)
      # event = booking.event
      # normal_price = event.present? ? event.price_normal : 0
      # vip_price = event.present? ? event.price_vip : 0
      # total_price = (normal_price * booking.pax.to_i) + (vip_price * booking.pax_vip.to_i)
      # return total_price
    # end
  end
