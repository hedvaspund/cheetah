class Producer < ActiveRecord::Base
  has_many   :products


  def as_json(options={})
    super(:only => [:name],
          :include => {
            :products => {:only => [:name],:include => {:product_infos => {:only => [:scheduled_at,:photo_url, :price_cents, :barcode, :sku]}}}
          }
    )
  end
end
