class Message < ApplicationRecord
  belongs_to :group
  belongs_to :user

  validates :content, presence: true
  validates :time, presence: true
  validates :user_id, presence: true
  validates :group_id, presence: true

  def minutes_ago
    ((Time.now - self.time) / 60).to_i
  end

end
