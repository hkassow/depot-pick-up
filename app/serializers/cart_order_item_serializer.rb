class CartOrderItemSerializer < ActiveModel::Serializer
  attributes :id, :imageable
  belongs_to :item
end
