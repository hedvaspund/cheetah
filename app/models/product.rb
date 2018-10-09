class Product < ActiveRecord::Base
  has_many   :product_infos
  belongs_to :producer
end
