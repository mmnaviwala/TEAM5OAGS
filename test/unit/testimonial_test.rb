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

require 'test_helper'

class TestimonialTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
