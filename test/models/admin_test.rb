# == Schema Information
#
# Table name: admins
#
#  id         :integer          not null, primary key
#  api_key    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  name       :string(255)
#  password   :string(255)
#

require 'test_helper'

class AdminTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
