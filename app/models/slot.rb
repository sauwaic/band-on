class Slot < ApplicationRecord
  belongs_to :studio

  belongs_to :group

  validates :date, presence: true
  validates :start_time, presence: true, if: :before_end_time?
  validates :end_time, presence: true
  validates :taken, inclusion: { in: [true, false] }

  def taken?
    self.taken
  end

  def before_end_time?
    start_time < end_time
  end
end
