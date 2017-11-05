class ScoreCard < ApplicationRecord
  belongs_to :applicant
  has_many :scores, inverse_of: :score_card

  delegate :first_name,  to: :applicant
  delegate :last_name,   to: :applicant
  delegate :position_id, to: :applicant

  accepts_nested_attributes_for :scores
end
