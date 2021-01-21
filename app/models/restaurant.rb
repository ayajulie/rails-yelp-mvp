class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  @allowed_category = %w[chinese italian japanese french belgian]

  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :category, presence: true, inclusion: { in: @allowed_category }
end
