class Studio < ApplicationRecord
  has_many :slots, dependent: :destroy
  has_many :groups, through: :slots

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  has_attachment :photo

  has_many :studio_equipments, dependent: :destroy
  has_many :equipments, through: :studio_equipments

  validates :name, presence: true
  validates :address, presence: true
  validates :price, presence: true
end
