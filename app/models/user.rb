class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  has_secure_password
  before_save {email.downcase!}

  validates :password, presence: true, length: {minimum: 6}
  validates :email, presence: true, length: {maximum: 255},
            format: {with: VALID_EMAIL_REGEX},
            uniqueness: {case_sensitive: false}

end
