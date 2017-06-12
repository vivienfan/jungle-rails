class User < ActiveRecord::Base
  has_many :reviews

  validates :first_name,      presence: true
  validates :last_name,       presence: true
  validates :email,           presence: true, uniqueness: { case_sensitive: false }
  validates :password_digest, presence: true
  validates :password,        presence: true
  validates :password_confirmation, presence: true

  has_secure_password
end
