class User < ActiveRecord::Base
  has_many :reviews

  validates :first_name,      presence: true
  validates :last_name,       presence: true
  validates :email,           presence: true, uniqueness: { case_sensitive: false }
  validates :password_digest, presence: true
  validates :password,        presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true, length: { minimum: 6 }

  before_save :to_lower

  has_secure_password

  def self.authenticate_with_credentials (email, password)
    user = find_by_email(email.lstrip.rstrip.downcase)
    user.authenticate(password)
  end

  private
  def to_lower
    self.email.downcase!
  end
end
