

ActiveRecord::Schema.define(version: 2018_10_16_012304) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pictures", force: :cascade do |t|
    t.text "content"
    t.text "image"
    t.bigint "user_id"
  end

end
