module MainHelper

  def date_format(date)
    date.to_date.strftime("#{date.to_date.day.ordinalize} %B %Y")
  end

end
