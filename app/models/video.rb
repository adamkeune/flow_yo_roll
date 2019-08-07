class Video < ApplicationRecord
  belongs_to :user
  belongs_to :technique, optional: true

  validates :name, :url, presence: true
end
