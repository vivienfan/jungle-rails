class User < ActiveRecord::Base
  has_many :reviews

  validates :first_name,      presence: true
  validates :last_name,       presence: true
  validates :email,           presence: true, uniqueness: { case_sensitive: false }
  validates :password_digest, presence: true
  validates :password,        presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true, length: { minimum: 6 }

  has_secure_password
end
