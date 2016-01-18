# == Schema Information
#
# Table name: leke_plays
#
#  id           :integer          not null, primary key
#  leke_user_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Leke::Play < ActiveRecord::Base
  belongs_to :leke_user, class_name: "Leke::User"
end
