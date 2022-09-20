class AddPictureToItems < ActiveRecord::Migration[7.0]
  def change
    add_column :items, :picture, :string
  end
end
