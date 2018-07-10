class ArtWork < ApplicationRecord
  validates :title, :artist_id, :image_url, presence: true
  
  belongs_to :artist,
  foreign_key: :artist_id,
  class_name: :User
  
  has_many :shared_viewers,
  foreign_key: :artwork_id,
  class_name: :ArtworkShare
end