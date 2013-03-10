# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :text
#  email      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation
  has_secure_password

  before_save :create_remember_token

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true

  private

    def create_remember_token
      self.remember_token= SecureRandom.urlsafe_base64
    end
end
