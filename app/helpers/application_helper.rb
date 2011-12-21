# encoding: UTF-8

module ApplicationHelper
  def title_for(title = nil)
    if title
      "#{title} — Capital Fare"
    else
      "Capital Fare — Madison, Wisconsin restaurant reviews and food news"
    end
  end
end
