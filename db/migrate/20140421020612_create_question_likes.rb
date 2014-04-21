class CreateQuestionLikes < ActiveRecord::Migration
  def change
    create_table :question_likes do |t|
    	t.integer :user_id, null: false
    	t.integer :question_id, null: false
    end
    add_index :question_likes, :user_id
    add_index :question_likes, :question_id
  end
end
