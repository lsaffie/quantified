class Applicant < ApplicationRecord
  has_many :score_cards
  belongs_to :position

  def avg_score
    sum = score_cards.inject(0) {|i, e| i + e.score}
    sum / score_cards_size
  end

  def score_cards_size
    score_cards.size  > 1 ? score_cards.size : 1
  end
end
