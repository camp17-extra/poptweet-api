class ChangeColumnToTweet < ActiveRecord::Migration[5.1]
  def change
    change_column :tweets, :user_id, :integer, null: false
  end
end
