class Movie < ApplicationRecord
  has_many :bookmars, dependent: :destroy

  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true, uniqueness: true
  validates :poster_url, presence: true
end
