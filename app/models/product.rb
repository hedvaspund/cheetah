class Product < ActiveRecord::Base
  has_many   :product_infos
  belongs_to :producer

  def current_info
    product_infos.last
  end
end
