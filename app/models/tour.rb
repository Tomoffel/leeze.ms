class Tour < ActiveRecord::Base
  validates :title, :teaser, :description, :url, presence: true
  validates :url, format: %r|\Ahttp(s?)://www.google.com/maps/|
  has_many :tour_categories
  has_many :categories, through: :tour_categories
end