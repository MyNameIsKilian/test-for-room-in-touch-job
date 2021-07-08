class Article < ApplicationRecord
    has_many :upvotes
    has_many :reviews
end
