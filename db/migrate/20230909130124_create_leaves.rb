class CreateLeaves < ActiveRecord::Migration[7.0]
  def change
    create_table :leaves do |t|
      t.boolean :approved
      t.integer :leave_balance
      t.string :leave_type
      t.timestamps
    end
  end
end
