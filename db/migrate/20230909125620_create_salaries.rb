class CreateSalaries < ActiveRecord::Migration[7.0]
  def change
    create_table :salaries do |t|
      t.integer :basic_salary
      t.integer :deductions
      t.integer :gross_salary
      t.integer :net_salary
      t.timestamps
    end
  end
end
