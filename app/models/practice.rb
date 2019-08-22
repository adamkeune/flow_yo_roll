class Practice < ApplicationRecord
  belongs_to :technique
  belongs_to :user

  def friendly_created_at
    created_at.strftime("%D")
  end
end
