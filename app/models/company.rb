class Company < ApplicationRecord

  has_many :departments
  has_many :positions
  has_many :applicants
  has_many :score_cards

end
