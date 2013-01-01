class Item < ActiveRecord::Base
  attr_accessible :category, :labour_price, :margin, :sum_price, :supply_price, :title, :unit
end
