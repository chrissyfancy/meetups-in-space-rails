class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
    @meetup = Meetup.where(event_id: @event)[0]
  end
end
