class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    if params[:query].present?
      @events = Event.global_search(params[:query])
    else
      @events = Event.where('date >= ?', Date.today).order(date: :asc)
    end
    if params[:tag].present?
      @events = @events.joins(:tags).where(tags: { name: params[:tag] })
    end
  end

  def show
    @event = Event.find(params[:id])
    @artists = @event.artists
    @longitude = @event.longitude
    @latitude = @event.latitude

  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.save
    redirect_to events_path(@event)
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    @event.update(event_params)
    redirect_to event_path(@event)
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_path, status: :see_other
  end

  private

  def event_params
    params.require(:event).permit(:name, :date, :venue, :description, :price_normal, :price_vip, :address, :capacity, :image_url)
  end
end
