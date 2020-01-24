class User < ApplicationRecord
    has_many :reviews
    has_many :books, through: :reviews

    has_many :carts
    has_many :downloads, through: :carts
end
