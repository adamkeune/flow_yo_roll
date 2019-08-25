class Flow < ApplicationRecord
  belongs_to :user
  has_many :flow_techniques
  has_many :techniques, through: :flow_techniques

  validates :title, presence: true
end
