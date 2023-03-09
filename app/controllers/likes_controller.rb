class LikesController < ApplicationController
  before_action :set_event

  def create
    @like = current_user.likes.new(event: @event)
    if @like.save
      render json: { liked: true }
    else
      render json: { liked: false }
    end
  end

  def destroy
    @like = current_user.likes.find_by(event: @event)
    if @like.destroy
      render json: { liked: false }
    else
      render json: { liked: true }
    end
  end

  private

  def set_event
    @event = Event.find(params[:event_id])
  end
end
