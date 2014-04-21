class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
    	t.integer :question_id, null: false
    	t.integer :parent_reply_id
    	t.integer :user_id, null: false
    	t.string :body, null: false

    	t.timestamps
    end

    add_index :replies, :question_id
    add_index :replies, :parent_reply_id
    add_index :replies, :user_id
  end
end
