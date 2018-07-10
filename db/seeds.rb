# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.transaction do
  User.destroy_all


  # Wizards
  jose = User.create!(username: 'Jose')
  jose1 = User.create!(username: 'Jose1')
  jose2 = User.create!(username: 'Jose2')
  jose3 = User.create!(username: 'Jose3')
  jose4 = User.create!(username: 'Jose4')
  
  ArtWork.destroy_all
  art1 = ArtWork.create!(title: 'monalisa', artist_id: jose.id, image_url: 'https://bit.ly/2KTZ4g3')
  art2 = ArtWork.create!(title: 'monalisa1', artist_id: jose2.id, image_url: 'https://bit.ly/2KTZN0L')
  art3 = ArtWork.create!(title: 'monalisa2', artist_id: jose3.id, image_url: 'https://bit.ly/2KZsUjp')
  art4 = ArtWork.create!(title: 'monalisa3', artist_id: jose.id, image_url: 'https://bit.ly/2zqafIN')
  
  ArtworkShare.destroy_all
  share1 = ArtworkShare.create!(artwork_id: art1.id, viewer_id: jose3.id)
  share2 = ArtworkShare.create!(artwork_id: art4.id, viewer_id: jose1.id)
  share3 = ArtworkShare.create!(artwork_id: art4.id, viewer_id: jose2.id)
end