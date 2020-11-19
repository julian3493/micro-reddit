class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true, length: {minimum: 3}
  validates :email, presence: true, uniqueness: { message:'Email has to be unique'}

  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
end
