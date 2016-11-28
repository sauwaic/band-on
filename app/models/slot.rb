class Slot < ApplicationRecord
  belongs_to :studio

  has_one :group

  validates :date, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :taken, inclusion: { in: [true, false] }
end
