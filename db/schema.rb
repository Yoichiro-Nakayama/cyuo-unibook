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

ActiveRecord::Schema.define(version: 20160228040359) do

  create_table "chat_messages", force: :cascade do |t|
    t.text     "message",    limit: 65535
    t.integer  "chat_id",    limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "product_id", limit: 4
    t.integer  "user_id",    limit: 4
  end

  create_table "chats", force: :cascade do |t|
    t.text     "message",    limit: 65535
    t.integer  "buyer_id",   limit: 4
    t.integer  "seller_id",  limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "product_id", limit: 4
  end

  create_table "products", force: :cascade do |t|
    t.integer  "price",                  limit: 4
    t.string   "professor",              limit: 255
    t.text     "detail",                 limit: 65535
    t.integer  "user_id",                limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "faculty",                limit: 4
    t.string   "text_name",              limit: 255
    t.string   "sent_price",             limit: 255
    t.string   "sent_method",            limit: 255
    t.string   "image_url_file_name",    limit: 255
    t.string   "image_url_content_type", limit: 255
    t.integer  "image_url_file_size",    limit: 4
    t.datetime "image_url_updated_at"
    t.string   "univercity",             limit: 255
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255,   default: "", null: false
    t.string   "encrypted_password",     limit: 255,   default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,     default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.string   "nickname",               limit: 255
    t.string   "avatar_file_name",       limit: 255
    t.string   "avatar_content_type",    limit: 255
    t.integer  "avatar_file_size",       limit: 4
    t.datetime "avatar_updated_at"
    t.string   "major",                  limit: 255
    t.text     "introduce",              limit: 65535
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
