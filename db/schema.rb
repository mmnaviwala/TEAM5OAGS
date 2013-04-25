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

ActiveRecord::Schema.define(:version => 20130424151958) do

  create_table "artists", :force => true do |t|
    t.string   "date_of_birth", :null => false
    t.string   "date_deceased"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "csos", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "customers", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "dbas", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "employees", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "owners", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "testimonials", :force => true do |t|
    t.text     "content",     :null => false
    t.integer  "customer_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "transactions", :force => true do |t|
    t.float    "sales_price"
    t.integer  "customer_id", :null => false
    t.integer  "work_id",     :null => false
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "street"
    t.string   "city"
    t.integer  "zip"
    t.string   "state"
    t.integer  "area_code"
    t.string   "phone_number"
    t.string   "country"
    t.string   "password_digest"
    t.string   "remember_token"
    t.string   "username",        :null => false
    t.string   "email"
    t.string   "type"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "date_deceased"
    t.integer  "date_of_birth"
  end

  add_index "users", ["username"], :name => "index_users_on_username", :unique => true

  create_table "works", :force => true do |t|
    t.string   "title",             :null => false
    t.string   "medium",            :null => false
    t.text     "description",       :null => false
    t.string   "copy",              :null => false
    t.integer  "artist_id",         :null => false
    t.string   "img_url"
    t.float    "acquisition_price", :null => false
    t.float    "asking_price"
    t.string   "date_acquired"
    t.string   "date_sold"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

end
