class Leke::User < ActiveRecord::Base
  has_many :leke_play, class_name: "Leke::Play"
end
