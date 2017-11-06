class Score < ApplicationRecord
  belongs_to :score_card, inverse_of: :scores
  belongs_to :position_attribute

  delegate :weight, to: :position_attribute
end
