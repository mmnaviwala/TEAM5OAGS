# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  first_name      :string(255)
#  last_name       :string(255)
#  street          :string(255)
#  city            :string(255)
#  zip             :integer
#  state           :string(255)
#  area_code       :integer
#  phone_number    :integer
#  country         :string(255)
#  password_digest :string(255)
#  remember_token  :string(255)
#  username        :string(255)      not null
#  email           :string(255)
#  type            :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  date_deceased   :integer
#  date_of_birth   :integer
#

# All modules on this page are generated using scaffolding
#in accordance with REST and MVC 
#Created By:Joel Loucks & Gabe Ohlson, Chris Cruz, Muhammad Naviwala, Ryan Lee, Matt Liang
#Database user checks, constraints by: Joel Loucks & Gabe Ohlson
#Date Approved: 4/22/2013 by Chris Cruz & Muhammad Naviwala
class User < ActiveRecord::Base
  #removed rembember_token & password_digest from attr_accessible
  #added password & password_confirmation
  attr_accessible :area_code, :city, :country, :email, :first_name, :last_name, 
                  :phone_number, :state, :street, :type, :username, :zip, :password, :password_confirmation
  
  #this is required for secure password, rails generates it in the backend
  has_secure_password
  
  before_save { |user| user.email = email.downcase }
  before_save :create_remember_token
  before_save { |user| user.username = username.downcase }
  
  validates :username, presence: true, length: {minimum: 2, maximum: 15},
            uniqueness: {case_sensitive: false}
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}

  validates :password, presence: true, length: {minimum: 8}
  validates :password_confirmation, presence: true

  validates :first_name, presence: true, length: {minimum: 1, maximum: 32}
  validates :last_name, presence: true, length: {minimum: 1, maximum: 32}
  validates :city, presence: true, length: {minimum: 1, maximum: 20}
  validates :country, presence: true
  validates :area_code, presence: true, length: {minimum: 3, maximum: 3}
  validates :state, presence: true, length: {minimum: 1, maximum: 15}
  validates :street, presence: true, length: {minimum: 2, maximum: 50}
  validates :phone_number, presence: true, length: {minimum: 7, maximum: 8}
  validates :zip, presence: true, length: {minimum: 4, maximum: 5}
  
  private
    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
end
