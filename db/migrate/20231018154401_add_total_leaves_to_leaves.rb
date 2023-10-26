class AddTotalLeavesToLeaves < ActiveRecord::Migration[7.0]
  def change
    add_column :leaves, :credited, :integer
    add_column :leaves, :opening, :integer
    add_column :leaves, :availed, :integer
    add_column :leaves, :requested, :integer
    add_column :leaves, :balance, :integer
  end
end
