
class User < ApplicationRecord
  has_many :posts

  validates :name, presence: { message: 'Name must be present' }
  validates :email, presence: { message: 'Email is required' }, uniqueness: { message: 'Email must be unique' }, format: { with: URI::MailTo::EMAIL_REGEXP, message: 'Email format is not valid' }
  validates :password, presence: { message: 'Password is required' }, length: { minimum: 6, message: 'Password must have at least 6 characters' }

end
