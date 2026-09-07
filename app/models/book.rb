class Book < ApplicationRecord
  STATUSES = %w[to_read reading finished].freeze

  validates :title, presence: true, length: { maximum: 200 }
  validates :author, presence: true, length: { maximum: 120 }
  validates :status, inclusion: { in: STATUSES }
end
