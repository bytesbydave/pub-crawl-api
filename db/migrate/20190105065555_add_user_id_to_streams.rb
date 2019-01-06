class AddUserIdToStreams < ActiveRecord::Migration[5.2]
  def change
    add_column :streams, :userId, :string
  end
end
