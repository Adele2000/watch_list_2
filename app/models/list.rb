class List < ApplicationRecord
  has_many :bookmars, dependent: :destroy
  has_many :movies, through: :bookmarks

  validates :name, presence: true, uniqueness: true
end
