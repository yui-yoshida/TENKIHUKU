class AddColumnToPicture < ActiveRecord::Migration[5.2]
  def change
    add_column :pictures, :start_time, :datetime
  end
end
