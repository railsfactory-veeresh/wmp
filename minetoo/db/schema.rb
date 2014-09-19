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

ActiveRecord::Schema.define(version: 20140919111252) do

  create_table "bulletin_boards", force: true do |t|
    t.integer  "user_id"
    t.text     "post"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "bulletin_boards", ["user_id"], name: "index_bulletin_boards_on_user_id", using: :btree

  create_table "identities", force: true do |t|
    t.integer  "user_id"
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "identities", ["user_id"], name: "index_identities_on_user_id", using: :btree

  create_table "messages", force: true do |t|
    t.integer  "sender"
    t.integer  "reciever"
    t.text     "message"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "reciver_name"
    t.string   "sender_name"
  end

  create_table "my_lives", force: true do |t|
    t.text     "about_me"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "my_lives", ["user_id"], name: "index_my_lives_on_user_id", using: :btree

  create_table "qualities", force: true do |t|
    t.boolean  "conisiderate"
    t.boolean  "boisterous"
    t.boolean  "wise"
    t.boolean  "relaxed"
    t.boolean  "forward_looking"
    t.boolean  "intense"
    t.boolean  "indecisive"
    t.boolean  "strong"
    t.boolean  "grounded"
    t.boolean  "emotional"
    t.boolean  "demonstrative"
    t.boolean  "wity"
    t.boolean  "unaffected"
    t.boolean  "inscrutable"
    t.boolean  "mercurial"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "qualities", ["user_id"], name: "index_qualities_on_user_id", using: :btree

  create_table "tell_friends", force: true do |t|
    t.string   "friend_name"
    t.string   "friend_email"
    t.datetime "birth_date"
    t.text     "message"
    t.string   "sender_name"
    t.string   "sender_email"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tell_friends", ["user_id"], name: "index_tell_friends_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.datetime "birth_date"
    t.string   "sex"
    t.time     "birth_hour"
    t.string   "present_city"
    t.string   "present_country"
    t.string   "birth_city"
    t.string   "birth_country"
    t.text     "biography"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
