class User < ApplicationRecord
  validates :name, length: { minimum: 1 }

  has_many :groups, dependent: :destroy
  has_many :activities, dependent: :destroy
end
