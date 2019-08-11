class Video < ApplicationRecord
  belongs_to :user
  belongs_to :technique, optional: true

  validates :title, :url, presence: true
end
