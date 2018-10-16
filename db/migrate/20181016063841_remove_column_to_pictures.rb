class RemoveColumnToPictures < ActiveRecord::Migration[5.2]
  def change
    remove_column :pictures, :user_id, :bigint
  end
end
