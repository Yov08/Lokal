class EventArtistsController < ApplicationController
  def index
    @event_artists = Event_artist.all
  end

  def show
    @event_artist = Event_artist.find(params[:id])
  end

  def new
    @event_artist = Event_artist.new
  end

  def create
    @event_artist = Event_artist.new(event_artist_params)
    @event_artist.save
    redirect_to event_artists_path(@event_artist)
  end

  def edit
    @event_artist = Event_artist.find(params[:id])
  end

  def update
    @event_artist = Event_artist.find(params[:id])
    @event_artist.update(event_artist_params)
    redirect_to event_artist_path(@event_artist)
  end

  def destroy
    @event_artist = Event_artist.find(params[:id])
    @event_artist.destroy
    redirect_to event_artists_path, status: :see_other
  end

  private

  def event_artist_params
    params.require(:event).permit(:name)
  end
end
