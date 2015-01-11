class EventsController < ApplicationController
  def new
    render 'welcome/addreq'
  end

  def create
    event = Event.new(event_params)
    event.save
    p "!" * 50
    p event.max_speed
    #start chron job
    redirect_to '/'
  end

  private
    def event_params
      params.require(:event).permit(:max_speed)
    end
end
