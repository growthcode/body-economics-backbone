class User < ActiveRecord::Base
  # has_many :days, dependent: :destroy
  # has_many :foods, dependent: :destroy
  validates :email, uniqueness: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
