class Message < ApplicationRecord
  belongs_to :group
  belongs_to :user

  validates :content, presence: true
  validates :time, presence: true
end
