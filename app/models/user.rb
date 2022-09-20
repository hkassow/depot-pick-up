class User < ApplicationRecord
    validates :email, presence: true, uniqueness: true
    has_one :cart
end
