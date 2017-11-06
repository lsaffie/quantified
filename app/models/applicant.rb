class Applicant < ApplicationRecord
  has_many :score_cards
  belongs_to :position

  def avg_score
    sum = score_cards.inject(0) {|i, e| i + e.score}
    sum / score_cards.size
  end
end
