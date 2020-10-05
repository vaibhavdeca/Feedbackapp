class DropFeedbackColumn < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :feedback
  end
end
