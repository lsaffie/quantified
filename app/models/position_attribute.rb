class PositionAttribute < ApplicationRecord
  belongs_to :position, inverse_of: :position_attributes
end
