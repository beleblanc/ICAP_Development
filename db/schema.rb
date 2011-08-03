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

ActiveRecord::Schema.define(:version => 20110803095019) do

  create_table "calllogs", :force => true do |t|
    t.string   "ptid"
    t.integer  "number_id"
    t.time     "attempttime"
    t.string   "outcome"
    t.string   "answerer"
    t.integer  "refferal_number"
    t.time     "callback"
    t.text     "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "incentives", :force => true do |t|
    t.string   "ptid"
    t.string   "serial_number"
    t.date     "date_out"
    t.string   "field_manager"
    t.boolean  "transfered"
    t.date     "date_transfered"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "narratives", :force => true do |t|
    t.string   "ptid"
    t.text     "narratte"
    t.boolean  "review"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "phones", :force => true do |t|
    t.string   "ptid"
    t.integer  "p_number"
    t.string   "p_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ptids", :force => true do |t|
    t.string   "ptid"
    t.date     "enrollment"
    t.date     "follow_up"
    t.date     "handover"
    t.integer  "completion_code"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ptids", ["ptid"], :name => "index_ptids_on_ptid"

end
