class CreateAttributes < ActiveRecord::Migration[5.1]
  def change
    create_table :attributes do |t|
      t.string  :name
      t.integer :weight
      t.integer :score_card_id

      t.timestamps
    end
  end
end
