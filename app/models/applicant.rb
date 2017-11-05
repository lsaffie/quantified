class Applicant < ApplicationRecord
  has_many :score_cards
  belongs_to :position
end
