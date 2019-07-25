class Technique < ApplicationRecord
  belongs_to :user
  belongs_to :type
  has_many :practices
end
