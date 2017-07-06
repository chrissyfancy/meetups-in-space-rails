class TopicsController < ApplicationController

  def index
    @topics = Topic.all
  end

  def show
    @topic = Topic.find(params[:id])
    @meetups = Meetup.where(topic_id: @topic)
    @all_meetups = []
    @meetups.each do |meetup|
      event = Event.find(meetup.id)
      @all_meetups << { id: event.id, name: event.name }
    end
  end
end
