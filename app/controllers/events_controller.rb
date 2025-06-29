class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to root_path, notice: "🎉 Event created successfully!"
    else
      render :new
    end
  end

  def upcoming
    @events = Event.where("date >= ?", Date.today).order(:date)
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :location, :date, :max_seats)
  end
end
