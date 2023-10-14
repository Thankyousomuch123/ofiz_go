class AddColumnsToLeave < ActiveRecord::Migration[7.0]
  def change
    add_reference :leaves, :employee, null: false, foreign_key: true
    add_column :leaves, :start_date, :date
    add_column :leaves, :end_date, :date
    add_column :leaves, :reason, :string
    add_column :leaves, :status, :string
  end
end
