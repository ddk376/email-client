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

ActiveRecord::Schema.define(version: 20150925040418) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bcc_recipients", force: :cascade do |t|
    t.integer  "email_id",           null: false
    t.string   "bccrecipient_email", null: false
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "cc_recipients", force: :cascade do |t|
    t.integer  "email_id",          null: false
    t.string   "ccrecipient_email", null: false
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "conversations", force: :cascade do |t|
    t.integer  "sender_id"
    t.integer  "recipient_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "conversations", ["recipient_id"], name: "index_conversations_on_recipient_id", using: :btree
  add_index "conversations", ["sender_id"], name: "index_conversations_on_sender_id", using: :btree

  create_table "electronic_mail_recipients", force: :cascade do |t|
    t.integer  "email_id",        null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "recipient_email"
  end

  create_table "electronic_mails", force: :cascade do |t|
    t.integer  "author_id"
    t.string   "from",                                     null: false
    t.string   "to",                                       null: false
    t.string   "subject"
    t.text     "body"
    t.integer  "parent_email_id"
    t.boolean  "is_starred"
    t.boolean  "is_important"
    t.boolean  "has_attachment"
    t.boolean  "is_draft",                 default: true
    t.boolean  "is_archived"
    t.boolean  "is_read",                  default: false
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.boolean  "is_checked",               default: false
    t.integer  "subparent_id"
    t.boolean  "is_trash",                 default: false
    t.string   "cc"
    t.string   "bcc"
    t.string   "file_avatar_file_name"
    t.string   "file_avatar_content_type"
    t.integer  "file_avatar_file_size"
    t.datetime "file_avatar_updated_at"
  end

  create_table "messages", force: :cascade do |t|
    t.text     "body"
    t.integer  "conversation_id"
    t.integer  "user_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "messages", ["conversation_id"], name: "index_messages_on_conversation_id", using: :btree
  add_index "messages", ["user_id"], name: "index_messages_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",           null: false
    t.string   "password_digest", null: false
    t.string   "session_token",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", using: :btree

  add_foreign_key "messages", "conversations"
  add_foreign_key "messages", "users"
end
