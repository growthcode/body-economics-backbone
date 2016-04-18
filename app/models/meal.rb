class Meal < ActiveRecord::Base
  belongs_to :day
  belongs_to :user
  has_many :portions, dependent: :destroy
  # has_many :foods, through: :portions

  validates :day_id, presence: true
end
