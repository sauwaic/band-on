class GroupUser < ApplicationRecord
  belongs_to :user
  belongs_to :group
  belongs_to :instrument

  validates :instrument_id, presence: true
  validates :user, uniqueness: { scope: :group }
end
