# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_09_05_064837) do
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
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "area_skills", force: :cascade do |t|
    t.boolean "important"
    t.bigint "area_id", null: false
    t.bigint "skill_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["area_id"], name: "index_area_skills_on_area_id"
    t.index ["skill_id"], name: "index_area_skills_on_skill_id"
  end

  create_table "areas", force: :cascade do |t|
    t.string "name"
    t.text "Description"
    t.text "Characteristic"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roots", force: :cascade do |t|
    t.string "level"
    t.string "duration"
    t.bigint "area_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["area_id"], name: "index_roots_on_area_id"
  end

  create_table "skill_tools", force: :cascade do |t|
    t.boolean "important"
    t.bigint "skill_id", null: false
    t.bigint "tool_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["skill_id"], name: "index_skill_tools_on_skill_id"
    t.index ["tool_id"], name: "index_skill_tools_on_tool_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.text "Description"
    t.text "Characteristic"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "step_tools", force: :cascade do |t|
    t.bigint "step_id", null: false
    t.bigint "tool_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["step_id"], name: "index_step_tools_on_step_id"
    t.index ["tool_id"], name: "index_step_tools_on_tool_id"
  end

  create_table "steps", force: :cascade do |t|
    t.string "Name"
    t.text "Description"
    t.integer "Number"
    t.bigint "root_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["root_id"], name: "index_steps_on_root_id"
  end

  create_table "tool_areas", force: :cascade do |t|
    t.boolean "important"
    t.bigint "tool_id", null: false
    t.bigint "area_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["area_id"], name: "index_tool_areas_on_area_id"
    t.index ["tool_id"], name: "index_tool_areas_on_tool_id"
  end

  create_table "tool_types", force: :cascade do |t|
    t.string "class"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tools", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.text "Characteristic"
    t.bigint "tool_type_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tool_type_id"], name: "index_tools_on_tool_type_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "area_skills", "areas"
  add_foreign_key "area_skills", "skills"
  add_foreign_key "roots", "areas"
  add_foreign_key "skill_tools", "skills"
  add_foreign_key "skill_tools", "tools"
  add_foreign_key "step_tools", "steps"
  add_foreign_key "step_tools", "tools"
  add_foreign_key "steps", "roots"
  add_foreign_key "tool_areas", "areas"
  add_foreign_key "tool_areas", "tools"
  add_foreign_key "tools", "tool_types"
end
