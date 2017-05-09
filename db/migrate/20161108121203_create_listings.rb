class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :home_type
      t.string :listing_name
      t.text :summary
      t.string :address
      t.integer :accommodate
      t.integer :price
      t.boolean :is_kitchen
      t.boolean :is_laundry
      t.boolean :is_tv
      t.boolean :is_cleaner
      t.boolean :is_internet
      t.boolean :active
      t.text :conditions
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
