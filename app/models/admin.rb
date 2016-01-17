class Admin < ActiveRecord::Base
  
  before_create do |admin|
    admin.api_key = admin.generate_api_key
  end

  def generate_api_key
    loop do
      token = SecureRandom.base64.tr('+/=', 'Qrt')
      break token unless Admin.exists?(api_key: token)
    end
  end
end
