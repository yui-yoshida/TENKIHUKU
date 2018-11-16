class ChangePrefectureNameOfInteger < ActiveRecord::Migration[5.2]
  def up
    change_column :prefectures, :name, :string
  end

  def down
    change_column :prefectures, :name, :integer, using: 'name::integer'
  end
end
