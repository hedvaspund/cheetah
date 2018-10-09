class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string  :name, unique: true
      t.integer :producer_id
      t.timestamps
    end
    add_index :products, [:name, :producer_id], unique: true
  end
end
