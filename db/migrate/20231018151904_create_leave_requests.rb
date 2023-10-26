class CreateLeaveRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :leave_requests do |t|
      t.references :employee, null: false, foreign_key: true
      t.references :leave, null: false, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.timestamps
    end
  end
end
