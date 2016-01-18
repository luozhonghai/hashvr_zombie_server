# == Schema Information
#
# Table name: leke_users
#
#  id         :integer          not null, primary key
#  ip         :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class Leke::UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
