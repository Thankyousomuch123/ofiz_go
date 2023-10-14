class AddColumnsToPerformance < ActiveRecord::Migration[7.0]
  def change
    add_reference :performances, :employee, null: false, foreign_key: true
    add_column :performances, :review_date, :date
    add_column :performances, :review_comments, :text
    add_column :performances, :rating, :integer
  end
end
