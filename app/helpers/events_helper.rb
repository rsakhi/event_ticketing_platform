module EventsHelper
  
  def is_register event
    current_user.events.where(id: event.id)[0]
  end

  def is_avtive event
    event.start_date.future?
  end

  def get_price price
    if current_user.gender == 'Female'
      html = "<del> #{price}</del>&nbsp;&nbsp&nbsp;&nbsp;#{(price.to_f * 0.95).round(2)}"
    else
      html = "<span> #{price} </span>"
    end
  end
end
