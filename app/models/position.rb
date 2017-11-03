class Position < ApplicationRecord
  validates :title, presence: true

  has_many   :score_cards
  has_many   :applicants, through: :score_cards
  belongs_to :department
end
