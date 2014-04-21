class CreateQuestionFollowers < ActiveRecord::Migration
  def change
    create_table :question_followers do |t|
    	t.integer :follower_id, null: false
    	t.integer :question_id, null: false

    	t.timestamps
    end
    add_index :question_followers, :follower_id
    add_index :question_followers, :question_id
  end
end
