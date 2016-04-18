class Day < ActiveRecord::Base
  belongs_to :user
  has_many :meals, dependent: :destroy
  has_many :portions, through: :meals
  # has_many :foods, through: :meals

  validates [:user_id, :date_on], presence: true
end
