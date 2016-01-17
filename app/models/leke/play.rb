class Leke::Play < ActiveRecord::Base
  belongs_to :leke_user, class_name: "Leke::User"
end
