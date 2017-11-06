class CreateScoreCards < ActiveRecord::Migration[5.1]
  def change
    create_table :score_cards do |t|
      t.integer  :user_id
      t.datetime :completed_at
      t.integer  :score
      t.integer  :weighted_average

      t.integer  :applicant_id

      t.timestamps
    end
  end
end
