class CreateReplies < ActiveRecord::Migration[5.1]
  def change
    create_table :replies do |t|
      t.references :user, null: false
      t.references :tweet, null: false
      t.text :text, null: false
      t.timestamps
    end
  end
end
