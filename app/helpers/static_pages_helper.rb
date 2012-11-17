module StaticPagesHelper

  def current_time
      t = Time.now
      m = Date::MONTHNAMES[Date.today.month]
      x = "#{m} #{t.year}"
  end

  def is_active?(page_name)
      "active" if params[:action] == page_name
  end

end
