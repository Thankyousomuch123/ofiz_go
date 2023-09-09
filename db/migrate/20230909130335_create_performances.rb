class CreatePerformances < ActiveRecord::Migration[7.0]
  def change
    create_table :performances do |t|
      t.integer :performance_grade
      t.string :feedback
      t.timestamps
    end
  end
end
