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

ActiveRecord::Schema.define(version: 2018_08_18_104823) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "intents", force: :cascade do |t|
    t.string "tag"
    t.string "patterns"
    t.string "responses"
    t.integer "visitor_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "organisation_id"
  end

  create_table "messages", force: :cascade do |t|
    t.string "content"
    t.integer "user_id"
    t.boolean "template"
    t.string "responder"
    t.integer "template_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "chat_id"
    t.integer "visitor_id"
    t.string "payload"
    t.string "tags"
    t.boolean "ml"
    t.boolean "online"
    t.integer "organisation_id"
    t.string "message_c"
    t.boolean "cable"
    t.string "url"
    t.string "title"
    t.string "score"
    t.string "shorta"
  end

  create_table "organisations", force: :cascade do |t|
    t.string "name"
    t.integer "admin_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "website"
    t.string "admin_name"
    t.string "admin_email"
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.bigint "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string "bg_color"
    t.string "p_color"
    t.string "s_color"
    t.string "icon_color"
    t.string "avatar_icon_file_name"
    t.string "avatar_icon_content_type"
    t.bigint "avatar_icon_file_size"
    t.datetime "avatar_icon_updated_at"
    t.string "bg_img_file_name"
    t.string "bg_img_content_type"
    t.bigint "bg_img_file_size"
    t.datetime "bg_img_updated_at"
    t.string "p_f_color"
    t.string "s_f_color"
    t.integer "delete_logo"
  end

  create_table "tags", force: :cascade do |t|
    t.string "tag_name"
    t.string "tag_response"
    t.integer "template_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "templates", force: :cascade do |t|
    t.string "payload"
    t.string "partial"
    t.string "intent"
    t.integer "user_id"
    t.integer "parent_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "urls", force: :cascade do |t|
    t.integer "visitor_id"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "v_count"
    t.string "auth_token"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.integer "organisation_id"
    t.boolean "organisation_admin"
    t.boolean "logged_in"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.integer "customer_id"
    t.string "plan_id"
    t.string "subscription_id"
    t.string "status"
    t.integer "quantity"
    t.integer "start_at"
    t.integer "end_at"
    t.integer "charge_at"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "visitors", force: :cascade do |t|
    t.string "ipaddr"
    t.string "location"
    t.integer "v_count"
    t.string "url_id"
    t.string "name"
    t.string "email"
    t.string "auth_token"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "chat_id"
    t.boolean "ml_done"
    t.integer "organisation_id"
    t.string "browser_d"
    t.string "unread"
  end

end
