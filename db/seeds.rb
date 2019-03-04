User.destroy_all
Club.destroy_all
Comment.destroy_all
ClubGenre.destroy_all

puts "User"
 User.create!(
  first_name: "Wilson",
  last_name: "Jackson",
  email: "will@gmail.com",
  password: "123456",
  remote_photo_url: "https://s3-media3.fl.yelpcdn.com/bphoto/yooQiJ3Pe9i6h79lT0BgDw/ls.jpg"
  )

 User.create!(
  first_name: "Ryan",
  last_name: "Howard",
  email: "ryan@gmail.com",
  password: "123456",
  remote_photo_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ab/Kyrie_Irving_June_2016_crop.jpg/270px-Kyrie_Irving_June_2016_crop.jpg"
  )

puts "done User"

require 'faker'

puts 'Creating 10 fake user...'
10.times do
  user = User.new(
    first_name:Faker::Name.name
    last_name:Faker::Name.name
    email:Faker::Email.email
    password:
  )
  user.save!
end
puts 'Finished!'

puts "Creating Club"

club1 = Club.create!(
    name: "BLVD44",
    address: "2108 Blvd St-Laurent Montreal, QC H2X 2T2",
    remote_photo_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRblYbXP06x8Hfzzg6YQ5xmR9IVChDS9Vy2QnzGxScCWe1pTJv4",
    description: " Located inside Hotel10, Blvd44 is a popular Montreal nightclub with three distinct sections (main room, mezzanine and terrace), each offering its own unique atmosphere to please everyone. A spacious dance floor and numerous VIP booth await you at Blvd44, a popular and casual nightclub where you can socialize and have a drink with friends in private.",
    price: 20
  )

club2 = Club.create!(
    name: "Apartment 200",
    address: "3643 St-Laurent, APT.200 Montreal, QC",
    remote_photo_url: "https://images.unsplash.com/photo-1541057591728-77510a9ea77f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
    description: "Buzzy, brick-lined bar with hip, vintage decor, a pool table & arcade games, plus bottle service.",
    price: 20
  )

club3 = Club.create!(
    name: "Muzique",
    address: "3781 St Laurent Blvd, Montreal, QC H2W 1X8",
    remote_photo_url: "https://www.theplunge.com/wp-content/uploads/2017/07/travel_bachelor_party_montreal_best_nightclubs_stereo.jpg",
    description: "Posh nightspot featuring 2 dance floors with eclectic DJ–spun beats & a terrace.",
    price: 20
  )

club4 = Club.create!(
    name: "Stereo After Hours",
    address: "858 St Catherine St E, Montreal, QC H2L 2E3",
    remote_photo_url: "https://media-cdn.tripadvisor.com/media/photo-s/06/f2/de/e8/stereo-nightclub.jpg",
    description: "Stereo nightclub is an afterhours club in Montreal, Quebec, Canada which primarily features house music and techno. The afterhours section of the club is always open on Fridays and Saturdays. Stereo nightclub was created by DJ/producer Angel Moraes and later co-owned by Tommy Piscardeli.",
    price: 20
  )

club5 = Club.create!(
    name: "Club École Privée",
    address: "3500 St Laurent Blvd, Montreal, QC H2X 2V2",
    remote_photo_url: "https://montrealx.com/wp-content/uploads/2017/06/best-top-newest-montreal-nightclubs-rooftop-bar-Somwhr-Liquor-Lounge-2017-Club-Ecole-Privee.jpg",
    description: "Dimly-lit nightspot with a classy, lounge vibe, featuring house dance music, DJs & bottle service.",
    price: 20
  )

club6 = Club.create!(
    name: "Mme Lee",
    address: "151 Ontario St E, Montreal, QC H2X 1H5",
    remote_photo_url: "https://lh4.googleusercontent.com/proxy/TemLhSEOrKdm3WYxt6apiFMSfqwaexu0ShxObPeXaFtGBssP1QoOcthntpimXJtM4DTqRuxuY4Ho5mYb_mUBBPkhq6eBLLxeDnYYwfrUZiiyw8686uhvHcTYMpYEFBvIIQ2XMdtKT9NAjOmzfGqoUAD2aXCT7Co=w99-h99-n-k-no",
    description: "Cosmopolitan nightspot with music & bottle service in a sophisticated atmosphere.",
    price: 20
  )

club7 = Club.create!(
    name: "IVY Nightclub",
    address: " 3556 St Laurent Blvd, Montreal, QC H2X 2V1",
    remote_photo_url: "http://www.barmontreal.com/wp-content/themes/corporate/images/tmp/ivy/ivypic.jpg",
    description: "Vibrant, over-18 nightspot open weekends only & featuring DJs, dancing & bars serving drinks.",
    price: 20
  )

club8 = Club.create!(
    name: "Balattou Club",
    address: "4372 St Laurent Blvd, Montreal, QC H2W 1Z5",
    remote_photo_url: "http://balattou.com/wp-content/uploads/2014/02/slider14-900x350.jpg",
    description: "Cozy nightspot with live world-beats performances & visiting DJs on weekend nights.",
    price: 20
  )

club9 = Club.create!(
    name: "Le Belmont",
    address: "4483 St Laurent Blvd, Montreal, QC H2W 1Z8",
    remote_photo_url: "http://www.lebelmont.com/v2/accueil.jpg",
    description: "High-energy hub for live acts, DJs & dancing, plus pool tables, improv nights & events.",
    price: 20
  )

club10 = Club.create!(
    name: "Le Salon Daomé",
    address: "4465 St Laurent Blvd, Montreal, QC H2W 1Z8",
    remote_photo_url: "http://boulevardsaintlaurent.com/custom-content/uploads/2018/05/SalonDaome-Cover1.png",
    description: "Laid-back nightclub with a roster of international DJs spinning electronic music, plus theme nights.",
    price: 20
  )



puts "Club done"


puts "Creating videos"

Video.create!(
  club: club1,
  user: User.first,
  video: File.open("db/videos/01BLVD44.mp4")
)

Video.create!(
  club: club1,
  user: User.first,
  video: File.open("db/videos/02APT200.mp4")

)

Video.create!(
  club: club1,
  user: User.first,
  video: File.open("db/videos/03MUZ.mp4")
)

Video.create!(
  club: club1,
  user: User.first,
  video: File.open("db/videos/04SAH.mp4")
)

puts "creating Comment"

Comment.create!(
  content: "This club is LIT!!!! !",
  club: club1,
  user: User.first
  )

Comment.create!(
  content: "Wow! This club is amazing! You should come!",
  club: club1,
  user: User.first
  )

Comment.create!(
  content: "DJ is rocking over here! Thanks CLUB XP!",
  club: club1,
  user: User.first
  )

Comment.create!(
  content: "THIS CLUB IS JAMMED PACKED!!!! OMG!",
  club: club1,
  user: User.first
  )

Comment.create!(
  content: "WoW you'll never guess who just showed up!!!!!",
  club: club1,
  user: User.first
  )

Comment.create!(
  content: "this is starting to get insane!!!!!! ",
  club: club1,
  user: User.first
  )
puts " done comment"

puts "adding music genre to a club"

ClubGenre.create!( name: "Hip-Hop" , club: club1)
ClubGenre.create!( name: "Dancehall" , club: club1)


puts "done"

puts "adding favorites to wilson"

Favorite.create!(user: User.first , club: club1)
Favorite.create!(user: User.first , club: club2)
Favorite.create!(user: User.first , club: club3)


puts "Done adding favorites to wilson"

# puts "making 1 admission"

# puts "done making admmsion"


