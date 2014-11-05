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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20141021230912) do

  create_table "caterers", :force => true do |t|
    t.string   "caterer_name"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "confrooms", :force => true do |t|
    t.string   "conf_room"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "depts", :force => true do |t|
    t.string   "dept_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "orders", :force => true do |t|
    t.string   "name"
    t.datetime "date_of_delivery"
    t.integer  "no_of_people"
    t.string   "food_allergies"
    t.string   "special_requests"
    t.string   "credit_card"
    t.integer  "dept_id"
    t.integer  "confroom_id"
    t.integer  "caterer_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "user_id"
  end

  add_index "orders", ["caterer_id"], :name => "index_orders_on_caterer_id"
  add_index "orders", ["confroom_id"], :name => "index_orders_on_confroom_id"
  add_index "orders", ["dept_id"], :name => "index_orders_on_dept_id"

  create_table "tries", :force => true do |t|
    t.string   "name"
    t.date     "date_delivery"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "role"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
