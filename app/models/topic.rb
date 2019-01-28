class Topic < ApplicationRecord
  validates :user_id, presence: true
  validates :description, presence: true
  validates :image, presence: true
   has_many :comments
   belongs_to :user
   mount_uploader :image, ImageUploader
   validate :image_size
   has_many :favorites
   has_many :favorite_users, through: :favorites, source: 'user'
  # has_reputation :favorites, source :user, aggregated_by: :sum
private
def image_size
  if image.size>10.megabytes
    errors.add(:image,"shold be less than 10MB")
end
end
end
