class CreateScores < ActiveRecord::Migration[5.1]
  def change 
    create_table :scores do |t|
      t.float :score
      t.integer :position_attribute_id
      t.integer :score_card_id
    end
  end
end
