# All modules on this page are generated using scaffolding
#in accordance with REST and MVC 
#Created By:Joel Loucks & Gabe Ohlson
#Database user checks: Joel Loucks & Gabe Ohlson
#Date Approved: 4/22/2013 by Chris Cruz & Muhammad Naviwala

module ApplicationHelper
  # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "TEAM5OAGS"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
end