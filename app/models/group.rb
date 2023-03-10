class Group < ApplicationRecord
  validates :name, length: { minimum: 1 }
  validates :icon, presence: true

  has_and_belongs_to_many :activities, dependent: :destroy
  belongs_to :user

  def total_amount
    activities.sum(:amount)
  end
end
