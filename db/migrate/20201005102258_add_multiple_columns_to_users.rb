class AddMultipleColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :fq1, :text
    add_column :users, :fq2, :text
    add_column :users, :fq3, :text
  end
end
