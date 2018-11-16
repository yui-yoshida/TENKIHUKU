class RemameLatAndLongOfPrefecture < ActiveRecord::Migration[5.2]
  def change
    remove_column :prefectures, :lat, :integer
    remove_column :prefectures, :long, :integer
    add_column :prefectures, :latitude, :string
    add_column :prefectures, :longitude, :string
  end
end
