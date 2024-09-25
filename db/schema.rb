ActiveRecord::Schema.define(version: 2021_10_28_072829) do
  
  enable_extension "plpgsql"

  create_table "reservations", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "teacher_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["teacher_id"], name: "index_reservations_on_teacher_id"
    t.index ["user_id"], name: "index_reservations_on_user_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name"
    t.string "courses"
    t.string "experience"
    t.string "image"
    t.datetime "updated_at"
    t.datetime "created_at"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "reservations", "teachers"
  add_foreign_key "reservations", "users"
end
