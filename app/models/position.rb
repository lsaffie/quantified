class Position < ApplicationRecord
  validates :title, presence: true

  has_many   :applicants
  has_many   :position_attributes, inverse_of: :position
  belongs_to :department, optional: true

  accepts_nested_attributes_for :position_attributes
end
