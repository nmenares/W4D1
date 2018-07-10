class User < ApplicationRecord
  validates :username, uniqueness: true, presence: true
  
  has_many :artworks,
  foreign_key: :artist_id,
  class_name: :ArtWork
  
  has_many :shared_artworks,
  foreign_key: :viewer_id,
  class_name: :ArtworkShare
  
  has_many :shared_works,
  through: :shared_artworks,
  source: :shared_viewers
end