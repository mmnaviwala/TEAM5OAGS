# All modules on this page are generated using scaffolding
#in accordance with REST and MVC 
#Created By:Joel Loucks & Gabe Ohlson, Chris Cruz, Muhammad Naviwala, Ryan Lee, Matt Liang
#Database user checks, constraints by: Joel Loucks & Gabe Ohlson
#Search method by: Chris Cruz
#Date Approved: 4/22/2013 by Chris Cruz & Muhammad Naviwala

# == Schema Information
#
# Table name: testimonials
#
#  id          :integer          not null, primary key
#  content     :text             not null
#  customer_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Testimonial < ActiveRecord::Base
  attr_accessible :content, :customer_id 
  belongs_to :customer, :foreign_key => :customer_id
  
  def self.search(search)
    if search
      find(:all, :conditions => ['content LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end
end
