class Department < ApplicationRecord
  validates :name, presence: true

  has_many   :positions
  belongs_to :company
end
