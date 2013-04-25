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

require 'test_helper'

class CustomerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
