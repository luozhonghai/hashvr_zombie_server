# == Schema Information
#
# Table name: leke_users
#
#  id         :integer          not null, primary key
#  ip         :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Leke::User < ActiveRecord::Base
  has_many :leke_play, class_name: "Leke::Play"
end
