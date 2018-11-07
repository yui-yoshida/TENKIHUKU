class AddColumnToPicturesWeather < ActiveRecord::Migration[5.2]
  def change
    add_column :pictures, :weather, :integer
  end
end
