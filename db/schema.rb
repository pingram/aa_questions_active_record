# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140421020612) do

  create_table "question_followers", force: true do |t|
    t.integer  "follower_id", null: false
    t.integer  "question_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "question_followers", ["follower_id"], name: "index_question_followers_on_follower_id"
  add_index "question_followers", ["question_id"], name: "index_question_followers_on_question_id"

  create_table "question_likes", force: true do |t|
    t.integer "user_id",     null: false
    t.integer "question_id", null: false
  end

  add_index "question_likes", ["question_id"], name: "index_question_likes_on_question_id"
  add_index "question_likes", ["user_id"], name: "index_question_likes_on_user_id"

  create_table "questions", force: true do |t|
    t.string   "title",      null: false
    t.string   "body",       null: false
    t.integer  "author_id",  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "questions", ["author_id"], name: "index_questions_on_author_id"

  create_table "replies", force: true do |t|
    t.integer  "question_id",     null: false
    t.integer  "parent_reply_id"
    t.integer  "user_id",         null: false
    t.string   "body",            null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "replies", ["parent_reply_id"], name: "index_replies_on_parent_reply_id"
  add_index "replies", ["question_id"], name: "index_replies_on_question_id"
  add_index "replies", ["user_id"], name: "index_replies_on_user_id"

  create_table "users", force: true do |t|
    t.string   "fname",      null: false
    t.string   "lname",      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
