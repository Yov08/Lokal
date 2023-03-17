class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @events = fetch_events
    @top_rated_events = fetch_top_rated_events
    @upcoming_events = fetch_upcoming_events

    respond_to do |format|
      format.html
      format.js
    end

    if params[:upcoming]
      render partial: 'upcoming_events', locals: { events: @upcoming_events }
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

  def fetch_events
    events = if params[:query].present?
               Event.global_search(params[:query])
             else
               Event.where('date >= ?', Date.today).order(date: :asc)
             end

    events = events.joins(:tags).where(tags: { name: params[:tag] }) if params[:tag].present?

    events
  end

  def fetch_top_rated_events
    Event.left_joins(:likes).group(:id).order('COUNT(likes.id) DESC').limit(3)
  end

  def fetch_upcoming_events
    Event.where('date BETWEEN ? AND ?', Date.today, 8.weeks.from_now).order(date: :asc)
  end
end
