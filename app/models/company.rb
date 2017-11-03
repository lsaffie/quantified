class Company < ApplicationRecord

  has_many :departments

  after_create :seed_default_dependencies

  private
  def seed_default_dependencies
    department = departments.create(name: 'default')
    position   = department.positions.create(title: 'default')
    score_card = position.score_cards.create
    applicant  = score_card.applicant.build
  end
end
