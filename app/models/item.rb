class Item < ApplicationRecord
    has_many :cart_order_items
    validates :name, :price, :quantity, :instock, presence: true
end
