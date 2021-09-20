class Image < ApplicationRecord
  belongs_to :post
  has_many :comments
  has_many :likes
end
