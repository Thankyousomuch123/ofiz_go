class CreateLeaves < ActiveRecord::Migration[7.0]
  def change
    create_table :leaves do |t|
      t.string :leave_name
      t.timestamps
    end
  end
end
