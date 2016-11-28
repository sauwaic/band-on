class Instrument < ApplicationRecord
  has_many :user_instruments
  has_many :users, through: :user_instruments

  has_many :group_users
  has_many :groups, through: :group_users

  validates :name, presence: true, uniqueness: true
end
