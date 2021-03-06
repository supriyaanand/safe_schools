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

ActiveRecord::Schema.define(version: 20150308162917) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.string   "commenter"
    t.text     "body"
    t.integer  "issue_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "comments", ["issue_id"], name: "index_comments_on_issue_id", using: :btree

  create_table "issues", force: :cascade do |t|
    t.integer  "school_id"
    t.text     "desc"
    t.string   "reporter_email"
    t.string   "reporter_name"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "status"
    t.string   "summary"
  end

  add_index "issues", ["school_id"], name: "index_issues_on_school_id", using: :btree

  create_table "reviews", force: :cascade do |t|
    t.integer  "school_id"
    t.string   "surroundings_good"
    t.string   "teacher_bg"
    t.string   "helpers_bg"
    t.string   "security"
    t.string   "safe_at_school"
    t.text     "comments"
    t.integer  "overall_rating"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "helper_in_bus"
    t.string   "aid_student_crossing"
  end

  add_index "reviews", ["school_id"], name: "index_reviews_on_school_id", using: :btree

  create_table "schools", force: :cascade do |t|
    t.string   "name"
    t.string   "locality"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.integer  "class"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "suggestions", force: :cascade do |t|
    t.text     "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "comments", "issues"
  add_foreign_key "issues", "schools"
  add_foreign_key "reviews", "schools"
end
