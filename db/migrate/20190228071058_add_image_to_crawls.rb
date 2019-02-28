class AddImageToCrawls < ActiveRecord::Migration[5.2]
  def change
    add_column :crawls, :image, :string
  end
end
