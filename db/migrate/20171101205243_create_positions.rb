class CreatePositions < ActiveRecord::Migration[5.1]
  def change
    create_table :positions do |t|
      t.string   :title
      t.datetime :start_date
      t.integer  :salary_range_low_bound
      t.integer  :salary_range_high_bound
      t.integer  :department_id
      t.integer  :company_id

      t.timestamps
    end
  end
end
