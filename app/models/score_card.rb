class ScoreCard < ApplicationRecord
  belongs_to :applicant
  has_many :scores, inverse_of: :score_card

  delegate :first_name,  to: :applicant
  delegate :last_name,   to: :applicant
  delegate :position_id, to: :applicant

  after_save :calculate_score

  accepts_nested_attributes_for :scores

  private
  def calculate_score
    score = scores.inject(0) { |i, e| i + e.score * e.weight }
    self.update_attribute(:score, score)
  end
end
