class User < ApplicationRecord
  has_many :posts
  has_many :images, through: :posts
  has_many :likes
  has_many :liked_images, through: :likes, source: :images
  has_many :comments

  def images_and_comments
    liked_images.includes(:comments)
  end
end
