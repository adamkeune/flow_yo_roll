class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_many :techniques
  has_many :practices
  has_many :flows
  has_many :videos
end
