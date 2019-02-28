class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.references :crawl, foreign_key: true
      t.string :name
      t.string :description
      t.string :website
      t.string :image_url
      t.string :phone
      t.string :rating
      t.string :yelp_id
      t.string :category
      t.string :city
      t.string :address

      t.timestamps
    end
  end
end
