class Score < ApplicationRecord
  belongs_to :score_card, inverse_of: :scores
end
