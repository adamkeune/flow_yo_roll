class Technique < ApplicationRecord
  belongs_to :user
  belongs_to :type
  has_many :practices
  has_many :flow_techniques
  has_many :flows, through: :flow_techniques
  has_many :videos

  validates :name, :priority, presence: true
  validates :description, length: { maximum: 500 }
end
