class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :password, length: { in: 8..32 }
  validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :email, format: {/\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i}
  validates :name, length:{maximum:15}
  has_secure_password

  has_many :topics
   has_many :favorites
    has_many :favorite_topics, through: :favorites, source: 'topic'

end
