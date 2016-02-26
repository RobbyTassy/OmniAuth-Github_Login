class User < ActiveRecord::Base
  validates :provider, presence: true
  def self.create_with_omniauth(auth)
    User.create(
    provider: auth['provider'],
    uid: auth['auth'],
    name: auth['info']['name']
     )
  end
end
