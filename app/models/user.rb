class User < ApplicationRecord
  validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 3, maximum: 100 }
  VALID_EMAIL_REGEX = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/
  validates :email, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 105},
  format: {with: VALID_EMAIL_REGEX}
end 