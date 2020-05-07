module EventsHelper
  
  def is_register event
    current_user.events.where(id: event.id)[0]
  end
end
