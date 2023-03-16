  class BookingsController < ApplicationController
    def index
      @bookings = Booking.all
      @bookings = current_user.bookings.includes(:event).references(:event)
      case params[:sort]
      when 'oldest'
        @bookings = @bookings.order('events.date ASC')
      when 'upcoming'
        @bookings = @bookings.where('events.date >= ?', Date.today).order('events.date ASC')
      when 'over'
        @bookings = @bookings.where('events.date < ?', Date.today).order('events.date DESC')
      else
        @bookings = @bookings.order('events.date DESC')
      end
    end

    def show
      @event = Event.find(params[:event_id])
      @booking = Booking.find(params[:id])
    end

    def new
      @event = Event.find_by(id: params[:event_id])
      @booking = @event.bookings.build
    end

    def create
      @booking = Booking.new(booking_params)
      @booking.user = current_user
      @event = Event.find_by(id: params[:booking][:event_id])
      @booking.event = @event
      if @booking.save
        @normal_total = @booking.pax * @booking.event.price_normal
        @vip_total = @booking.pax_vip * @booking.event.price_vip
        @price_total = @normal_total + @vip_total
        @booking.update(total_price: @price_total)
        redirect_to booking_confirmation_path(@booking)
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
      params.require(:booking).permit(:event_id, :pax, :pax_vip, :total_price)
    end

  end
