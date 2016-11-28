class Studio < ApplicationRecord
  has_many :slots
  has_many :groups, through: :slots


  has_many :studio_equipments
  has_many :equipments, through: :studio_equipments

  validates :name, presence: true
  validates :address, presence: true
  validates :price, presence: true
end
