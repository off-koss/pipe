module ApplicationHelper
  def full_title(page_title)
    base_title = 'Feed reader'

    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
end
