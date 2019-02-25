# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Club.destroy_all
Comment.destroy_all

puts "User"
 User.create!(
  first_name: "Wilson",
  last_name: "Jackson",
  email: "will@gmail.com",
  password: "123456",
  remote_photo_url: "https://s3-media3.fl.yelpcdn.com/bphoto/yooQiJ3Pe9i6h79lT0BgDw/ls.jpg"

  )
puts "done User"


puts "Creating Club"

club1 = Club.create!(
    name: "BLVD44",
    address: "2108 Blvd St-Laurent Montreal, QC H2X 2T2",
    remote_photo_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRblYbXP06x8Hfzzg6YQ5xmR9IVChDS9Vy2QnzGxScCWe1pTJv4",
    description: " Blvd44 is a popular nightclub in Montreal and the perfect place to spend an exceptional evening with your friends!"
  )

club2 = Club.create!(
    name: "Apartment 200",
    address: "3643 St-Laurent, APT.200 Montreal, QC",
    remote_photo_url: "https://images.unsplash.com/photo-1541057591728-77510a9ea77f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
    description: "Most poppin' club in Montreal"
  )

club3 = Club.create!(
    name: "Muzique",
    address: "3781 St Laurent Blvd, Montreal, QC H2W 1X8",
   remote_photo_url: "https://www.theplunge.com/wp-content/uploads/2017/07/travel_bachelor_party_montreal_best_nightclubs_stereo.jpg",
    description: "Montreal's most famous club"
  )

club4 = Club.create!(
    name: "Stereo After Hours",
    address: "858 St Catherine St E, Montreal, QC H2L 2E3",
    remote_photo_url: "https://media-cdn.tripadvisor.com/media/photo-s/06/f2/de/e8/stereo-nightclub.jpg",
    description: "Housing and Techno music for all"
  )

puts "Club done"


puts "creating Comment"

Comment.create!(
  content: "This club is LIT!!!! !",
  club: club1,
  user: User.first
  )

Comment.create!(
  content: "Wow! This club is amazing! You should come!",
  club: club2,
  user: User.first
  )

Comment.create!(
  content: "DJ is rocking over here! Thanks CLUB XP!",
  club: club3,
  user: User.first
  )

Comment.create!(
  content: "THIS CLUB IS JAMMED PACKED!!!! OMG!",
  club: club4,
  user: User.first
  )
puts " done comment"
