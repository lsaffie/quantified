class Position < ApplicationRecord
  validates :title, presence: true

  #has_many   :scorecards
  has_many   :applicants#, through: :scorecards
  belongs_to :department
end
