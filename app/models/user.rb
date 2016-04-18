class User < ActiveRecord::Base
  has_many :days, dependent: :destroy
  has_many :meals, through: :days
  has_many :portions, through: :meals

  # has_many :foods, through: :portions

  # has_many :food_created, class: 'Food'

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
