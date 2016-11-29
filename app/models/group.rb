class Group < ApplicationRecord
  belongs_to :slot

  has_attachment :photo

  has_many :group_users, dependent: :destroy
  has_many :users, through: :group_users

  has_many :instruments, through: :group_users

  has_many :messages

  validates :name, presence: true
  validates :description, presence: true
  validates :genre, inclusion: { in: %w(rock jazz punk acoustic indie hip-hop classical funk reggae blues metal other) }
  validates :level, inclusion: { in: %w(beginner intermediate advanced) }
end
