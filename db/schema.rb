
ActiveRecord::Schema.define(version: 20140827074532) do

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categorizations", force: true do |t|
    t.integer  "project_id"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "categorizations", ["category_id"], name: "index_categorizations_on_category_id"
  add_index "categorizations", ["project_id"], name: "index_categorizations_on_project_id"

  create_table "favorites", force: true do |t|
    t.integer  "project_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "favorites", ["project_id"], name: "index_favorites_on_project_id"
  add_index "favorites", ["user_id"], name: "index_favorites_on_user_id"

  create_table "pledges", force: true do |t|
    t.text     "comment"
    t.integer  "amount"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "pledges", ["project_id"], name: "index_pledges_on_project_id"

  create_table "projects", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.decimal  "target_pledge_amount"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "website"
    t.date     "pledging_ends_on"
    t.string   "team_members"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",           default: false
  end

end
