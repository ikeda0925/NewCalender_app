class EventController < ApplicationController
  def post
  end

  def create
    @event = Event.new(event: params[:event],
                       start_date: params[:start_date],
                       description: params[:description],
                       user_id: current_user.id)
    @event.save

    redirect_to("/home/top")
  end

  def confirm
  end

  def show
    @event = Event.find_by(id: params[:id])
  end

  def edit
    @event = Event.find_by(id: params[:id])
  end

  def update
    @event = Event.find_by(id: params[:id])

    @event.start_date = params[:start_date]
    @event.event = params[:event]
    @event.description = params[:description]
    @event.save

    redirect_to("/home/top")
  end

  def destroy
    @event = Event.find_by(id: params[:id])
    @event.destroy

    redirect_to("/home/top")
  end
end
