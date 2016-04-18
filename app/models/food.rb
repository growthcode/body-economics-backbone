class Food < ActiveRecord::Base
  has_many :portions, inverse_of: :food

  # has_many :meals, through: :portions # ???
  # belongs_to :meal, inverse_of: :foods # ???

  # belongs_to :meals, inverse_of: :foods
  # belongs_to :user, inverse_of: :foods

  # has_many :tags, dependent: :destroy
  belongs_to :creator, class: 'User'

  validates [:name, :creator_id], presence: true
end
