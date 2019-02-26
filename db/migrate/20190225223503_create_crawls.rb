class CreateCrawls < ActiveRecord::Migration[5.2]
  def change
    create_table :crawls do |t|
      t.string :name
      t.text :description
      t.string :userId

      t.timestamps
    end
  end
end
