module StaticPagesHelper

  def current_time
    t = Time.now
    m = Date::MONTHNAMES[Date.today.month]
    x = "#{m} #{t.year}"
  end

end
