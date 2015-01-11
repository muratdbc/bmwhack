class EventsController < ApplicationController
  def create
    event = Event.new(event_params)
    event.save
    #start chron job
    #redirect to dashboard
  end

  private
    def event_params
      params.require(:event).permit(:max_speed)
    end
end
