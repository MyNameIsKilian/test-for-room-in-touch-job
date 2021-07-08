class Article < ApplicationRecord
    has_many :upvotes
    has_many :reviews
    belongs_to :users
end
