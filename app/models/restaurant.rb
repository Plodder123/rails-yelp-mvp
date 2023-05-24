class Restaurant < ApplicationRecord
  catorgories = %w[chinese italian japanese french belgian]
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :category, presence: true, inclusion: { in: catorgories, message: '%w{value} is not a valid category'}
  validates :address, presence: true
end
