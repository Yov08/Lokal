class LikesController < ApplicationController
  before_action :set_event
  
  def create
    @like = current_user.likes.new(event: @event)
    if @like.save
      redirect_to @event, notice: 'Event was liked.'
    else
      redirect_to @event, alert: 'Unable to like event.'
    end
  end

  def destroy
    @like = current_user.likes.find_by(event: @event)
    if @like.destroy
      redirect_to @event, notice: 'Event was unliked.'
    else
      redirect_to @event, alert: 'Unable to unlike event.'
    end
  end

  private

  def set_event
    @event = Event.find(params[:event_id])
  end

end
