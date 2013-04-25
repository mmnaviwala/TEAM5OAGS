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
class Owner < User
  # attr_accessible :title, :body
end
