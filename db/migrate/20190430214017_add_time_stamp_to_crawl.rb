class AddTimeStampToCrawl < ActiveRecord::Migration[5.2]
  def change
    add_column :crawls, :start_time, :timestamp
  end
end
