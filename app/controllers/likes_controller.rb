class LikesController < ApplicationController
  before_action :set_event

  def create
    @like = current_user.likes.new(event: @event)
    if @like.save
      respond_to do |format|
        format.html { redirect_to events_path }
        format.json { render json: { liked: true } }
      end
    else
      respond_to do |format|
        format.html { redirect_to events_path }
        format.json { render json: { liked: false } }
      end
    end
  end

  def destroy
    @like = current_user.likes.find_by(event: @event)
    if @like.destroy
      respond_to do |format|
        format.html { redirect_to events_path }
        format.json { render json: { liked: false } }
      end
    else
      respond_to do |format|
        format.html { redirect_to events_path }
        format.json { render json: { liked: true } }
      end
    end
  end


  # def create
  #   @like = current_user.likes.new(event: @event)
  #   # if
  #   @like.save
  #     # render json: { liked: true }
  #     # redirect_to events_path
  #   # else
  #   #   render json: { liked: false }
  #   # end
  # end

  # def destroy
  #   @like = current_user.likes.find_by(event: @event)
  #   # if
  #   @like.destroy
  #     # render json: { liked: false }
  #     # redirect_to events_path
  #   # else
  #     # render json: { liked: true }
  #   # end
  # end

  private

  def set_event
    @event = Event.find(params[:event_id])
  end
end
