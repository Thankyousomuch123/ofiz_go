class CreateAttendances < ActiveRecord::Migration[7.0]
  def change
    create_table :attendances do |t|
      t.time :login_time
      t.time :logout_time
      t.timestamps
    end
  end
end
