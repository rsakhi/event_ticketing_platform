class EventsController < ApplicationController
  include EventsHelper

  def index
    @event = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    param = sanitize_params
    @event = Event.new(param)
    @event.start_date = getDate(param)
    if @event.save
      flash[:success] = "Event created successfully"
      redirect_to events_path
    else
      flash.now[:error] = @event.errors.full_messages.join(',')
      render :new
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def destroy
    event = Event.find params[:id]
    event.destroy
    flash[:success] = "Event deleted successfully"
    redirect_to events_path
  end

  def edit
  end

  def my_events
    @event = current_user.events
  end

  def reject
  end

  def accept
    binding.pry
    event = current_user.attendees.new(event_id: params[:id])
    if event.save
      redirect_to events_path
    else
    end
  end

  private
   def sanitize_params
      params.require(:event).permit(:title, :price, :venue, :start_date)
   end

   def getDate event
      dateObj = %w(1 2 3 4).map { |e| event["start_date(#{e}i)"].to_i }
      data = Date.new *dateObj
   end
end
