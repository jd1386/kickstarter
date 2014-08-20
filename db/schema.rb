
ActiveRecord::Schema.define(version: 20140819134425) do

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

end
