class Post < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :body, presence: true, length: {minumum:10, maximum:100}

  belongs_to :user
  has_many :comments, dependent: :destroy
end
