class CreateProductInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :product_infos do |t|
      t.string :product_id
      t.string :photo_url
      t.string :barcode
      t.string :sku
      t.integer :price_cents
      t.datetime :scheduled_at
      t.timestamps
    end

    add_index :product_infos, :product_id
  end
end
