class AddColumnCreatedAt < ActiveRecord::Migration[5.2]
  def change
    add_column :pictures, :created_at, :datetime
    add_column :pictures, :update_at, :datetime
  end
end
