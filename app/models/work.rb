# All modules on this page are generated using scaffolding
#in accordance with REST and MVC 
#Created By:Joel Loucks & Gabe Ohlson, Chris Cruz, Muhammad Naviwala, Ryan Lee, Matt Liang
#Database user checks, constraints by: Joel Loucks & Gabe Ohlson
#Date Approved: 4/22/2013 by Chris Cruz & Muhammad Naviwala

# == Schema Information
#
# Table name: works
#
#  id                :integer          not null, primary key
#  title             :string(255)      not null
#  medium            :string(255)      not null
#  description       :text             not null
#  copy              :string(255)      not null
#  artist_id         :integer          not null
#  img_url           :string(255)
#  acquisition_price :float            not null
#  asking_price      :float
#  date_acquired     :date             not null
#  date_sold         :date
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Work < ActiveRecord::Base
  attr_accessible :artist_id, :copy, :description, :img_url, :medium, :title, :acquisition_price, :asking_price, :date_acquired, :date_sold
  belongs_to :artist, :foreign_key => :artist_id
  has_many :transactions
  has_many :customers, :through => :transactions
end