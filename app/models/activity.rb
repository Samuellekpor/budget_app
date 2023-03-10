class Activity < ApplicationRecord
  validates :name, presence: true, length: { minimum: 1 }
  validates :amount, presence: true, numericality: { greater_than_or_equal_to: 0 }

  has_and_belongs_to_many :groups
  belongs_to :author, class_name: 'User', foreign_key: :author_id
end
