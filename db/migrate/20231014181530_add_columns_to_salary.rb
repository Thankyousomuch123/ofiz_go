class AddColumnsToSalary < ActiveRecord::Migration[7.0]
  def change
    add_reference :salaries, :employee, null: false, foreign_key: true
    add_column :salaries, :effective_date, :date
    add_column :salaries, :salary_amount, :decimal
  end
end
