class CreateHolidays < ActiveRecord::Migration[7.0]
  def change
    create_table :holidays do |t|
      t.date :government_holiday
      t.date :religious_holidays
      t.string :holiday_type
      t.timestamps
    end
  end
end
