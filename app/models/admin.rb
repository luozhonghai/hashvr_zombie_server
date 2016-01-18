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


require 'digest/sha1'
class Admin < ActiveRecord::Base
  before_save :encrypt_password
  before_create do |admin|
    admin.api_key = admin.generate_api_key
  end

  def generate_api_key
    loop do
      token = SecureRandom.base64.tr('+/=', 'Qrt')
      break token unless Admin.exists?(api_key: token)
    end
  end

  def encrypt_password
    if self.password.present?
      self.password = Digest::SHA1.hexdigest(self.password)
    else
      self.password = self.password_was
    end
  end

  def registered?
    u = Admin.find_by(name: self.name, password: Digest::SHA1.hexdigest(self.password))
    if u != nil
      self.id = u.id
      true
    else
      false
    end
  end

end
