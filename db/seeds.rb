ActiveRecord::Base.transaction do # sends the DB a transaction begin command
  u1 = User.create!(fname: "Ned", lname: "Ruggeri")
  u2 = User.create!(fname: "Kate", lname: "Ruggeri")

  q1 = Question.create!(title: "First Question?", body: "qqq", author_id: u1.id)
  q2 = Question.create!(title: "Second Question?", body: "qqq", author_id: u1.id)
  q3 = Question.create!(title: "Kate Question?", body: "qqq", author_id: u2.id)

  r1 = Reply.create!(
    question_id: q1.id,
    parent_reply_id: nil,
    user_id: u1.id,
    body: "Please Reply Kate!"
  )
  r2 = Reply.create!(
    question_id: q1.id,
    parent_reply_id: r1.id,
    user_id: u2.id,
    body: "Kate is replying!"
  )

  qf1 = QuestionFollower.create!(follower_id: u1.id, question_id: q1.id)
  qf3 = QuestionFollower.create!(follower_id: u2.id, question_id: q1.id)

  # Send the DB a "COMMIT" command
end