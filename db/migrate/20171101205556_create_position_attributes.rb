class CreatePositionAttributes < ActiveRecord::Migration[5.1]
  def change
    create_table :position_attributes do |t|
      t.string  :name
      t.float :weight
      t.integer :position_id

      t.timestamps
    end
  end
end
