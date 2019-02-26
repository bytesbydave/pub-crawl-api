class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.references :crawl, foreign_key: true
      t.string :name
      t.string :description
      t.string :website
      t.string :image_url

      t.timestamps
    end
  end
end
