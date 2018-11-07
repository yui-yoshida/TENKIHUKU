class CreatePrefectures < ActiveRecord::Migration[5.2]
  def change
    create_table :prefectures do |t|
      t.integer :name
      t.integer :lat
      t.integer :long
      t.timestamps
    end
  end
end
