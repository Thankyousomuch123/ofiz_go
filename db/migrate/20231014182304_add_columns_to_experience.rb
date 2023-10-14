class AddColumnsToExperience < ActiveRecord::Migration[7.0]
  def change
    add_reference :experiences, :employee, null: false, foreign_key: true
    add_column :experiences, :skill, :string
    add_column :experiences, :qualification, :string
  end
end
