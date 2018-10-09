require 'csv'

module CheetahCatalog
  class CsvParser
    def self.parse
      p "*"* 100
      # file_path = Rails.root.join("public", "catalog-cheetah.csv")
      # CSV.foreach(file_path, :headers => true) do |row|
      #   producer = Producer.find_or_create_by(name: row["producer"] || "Unknown")
      #   product = Product.find_or_create_by(name: row["product_name"], producer: producer)
      #   product.product_infos.create(scheduled_at: Time.now, photo_url: row["photo_url"], barcode: row["barcode"], sku: row["sku (unique_id)"])
      # end
    end
  end
end    

