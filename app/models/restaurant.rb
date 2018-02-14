class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

  validates :name, uniqueness: true, presence: true
  # validates :phone_number, presence: true, format: { with: /\d{10}/, message: " wrong format, only allows 10 digit" }
  validates :address, presence: true
  validates :category, inclusion: {
    in: CATEGORIES,
    message: "Please choose a valid restaurant category"
  }

end
