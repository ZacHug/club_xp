User.destroy_all
Club.destroy_all
Comment.destroy_all
ClubGenre.destroy_all

puts "User"
# Fictional Users
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

# Users ---> Teachers and TAs
mg = User.create!(
  first_name: "Marie",
  last_name: "Ayoub",
  email: "mg@gmail.com",
  password: "123456",
  remote_photo_url: "https://media.licdn.com/dms/image/C4E03AQFxPwAmRwL7lA/profile-displayphoto-shrink_800_800/0?e=1557360000&v=beta&t=hf71CAbm91JU75kltb9orYdtKKLg2JVbcs2nnGZwfyI"
  )
antoine = User.create!(
  first_name: "Antoine",
  last_name: "Ayoub",
  email: "antoine@gmail.com",
  password: "123456",
  remote_photo_url: "https://media.licdn.com/dms/image/C4E03AQGWiRSEcRMCbw/profile-displayphoto-shrink_800_800/0?e=1557360000&v=beta&t=jjmAmkLHF9Zs1OhoCugPh-Gm3wf9ldq6ImkeRWZFlp8"
  )

aline = User.create!(
  first_name: "Aline",
  last_name: "Gasparindo",
  email: "aline@gmail.com",
  password: "123456",
  remote_photo_url: "https://media.licdn.com/dms/image/C4E03AQF7F1HsYdY1Cg/profile-displayphoto-shrink_800_800/0?e=1557360000&v=beta&t=XA3RqyOVxYxQJCPTMkpBdJv6dEOafwyCkkyjJ4l04qI"
  )
martin = User.create!(
  first_name: "Martin",
  last_name: "Giannakopoulos",
  email: "martin@gmail.com",
  password: "123456",
  remote_photo_url: "https://media.licdn.com/dms/image/C5603AQFbrmf9dn71Eg/profile-displayphoto-shrink_800_800/0?e=1557360000&v=beta&t=J7nD-nwSoP0IYieHyHQWfaGEtjU87LFoMoitjrPdN7U"
  )
stephane = User.create!(
  first_name: "Stephane",
  last_name: "Lafontaine",
  email: "stephane@gmail.com",
  password: "1234565",
  remote_photo_url: "https://media.licdn.com/dms/image/C5603AQGz8F1hD4Llmg/profile-displayphoto-shrink_800_800/0?e=1557360000&v=beta&t=VZccHUxAvhUaxlhC1ubW7f-jpEor7nXVQW-ndjdxry4"
  )
tim = User.create!(
  first_name: "Timothée",
  last_name: "Clain",
  email: "tim@gmail.com",
  password: "123456",
  remote_photo_url: "https://media.licdn.com/dms/image/C4D03AQGkR61Um2wN7g/profile-displayphoto-shrink_800_800/0?e=1557360000&v=beta&t=zAr17U9SCK3Z_xW7C6Tue-XGW_FmdX3qNKPdhAWYyKw"
  )
puts "done User"

require 'faker'

puts 'Creating 10 fake user...'
number = 50
10.times do
  user = User.new(
    first_name: Faker::Name.name,
    last_name: Faker::Name.name,
    email: Faker::Internet.email,
    password:"123456",
    remote_photo_url: "https://randomuser.me/api/portraits/men/#{number}.jpg"
  )
  number += 1
  user.save!
end
puts 'Finished!'


puts "Creating Club"
club1 = Club.create!(
    name: "BLVD44",
    address: "2108 Blvd St-Laurent, Montreal",
    remote_photo_url: "https://encrypted-tbn0.gstatic.com/7images?q=tbn:ANd9GcRblYbXP06x8Hfzzg6YQ5xmR9IVChDS9Vy2QnzGxScCWe1pTJv4",
    description: " Located inside Hotel10, Blvd44 is a popular Montreal nightclub with three distinct sections (main room, mezzanine and terrace), each offering its own unique atmosphere to please everyone. A spacious dance floor and numerous VIP booth await you at Blvd44, a popular and casual nightclub where you can socialize and have a drink with friends in private.",
    price: 20,
    postalcode: ", QC H2X 2T2",
    hotness: 3
  )

club2 = Club.create!(
    name: "Apt. 200",
    address: "3643 Blvd St Laurent, Montreal",
    remote_photo_url: "https://images.unsplash.com/photo-1541057591728-77510a9ea77f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
    description: "Buzzy, brick-lined bar with hip, vintage decor, a pool table & arcade games, plus bottle service.",
    price: 10,
    postalcode: ", QC H2X 2V5",
    hotness: 4
  )

club3 = Club.create!(
    name: "Muzique",
    address: "3781 Blvd St Laurent, Montreal",


    remote_photo_url: "https://images1.miaminewtimes.com/imager/u/745xauto/9303092/rockwell_interior2_2_.jpeg",

    description: "Posh nightspot featuring 2 dance floors with eclectic DJ–spun beats & a terrace.",
    price: 15,
    postalcode: ", QC H2W 1X8",
    hotness: 3
  )

club4 = Club.create!(
    name: "Stereo After Hours",
    address: "858 St Catherine, Montreal",
    remote_photo_url: "https://media-cdn.tripadvisor.com/media/photo-s/06/f2/de/e8/stereo-nightclub.jpg",
    description: "Stereo nightclub is an afterhours club in Montreal, Quebec, Canada which primarily features house music and techno. The afterhours section of the club is always open on Fridays and Saturdays. Stereo nightclub was created by DJ/producer Angel Moraes and later co-owned by Tommy Piscardeli.",
    price: 10,
    postalcode: ", QC H2L 2E3",
    hotness: 5
  )

club5 = Club.create!(
    name: "Club École Privée",
    address: "3500 Blvd St Laurent, Montreal",
    remote_photo_url: "https://montrealx.com/wp-content/uploads/2017/06/best-top-newest-montreal-nightclubs-rooftop-bar-Somwhr-Liquor-Lounge-2017-Club-Ecole-Privee.jpg",
    description: "Dimly-lit nightspot with a classy, lounge vibe, featuring house dance music, DJs & bottle service.",
    price: 15,
    postalcode: ", QC H2X 2V2",
    hotness: 2
  )

club6 = Club.create!(
    name: "Mme Lee",
    address: "151 St Ontario,  Montreal",
    remote_photo_url: "https://lh4.googleusercontent.com/proxy/TemLhSEOrKdm3WYxt6apiFMSfqwaexu0ShxObPeXaFtGBssP1QoOcthntpimXJtM4DTqRuxuY4Ho5mYb_mUBBPkhq6eBLLxeDnYYwfrUZiiyw8686uhvHcTYMpYEFBvIIQ2XMdtKT9NAjOmzfGqoUAD2aXCT7Co=w99-h99-n-k-no",
    description: "Cosmopolitan nightspot with music & bottle service in a sophisticated atmosphere.",
    price: 20,
    postalcode: ", QC H2X 1H5",
    hotness: 1
  )

club7 = Club.create!(
    name: "IVY Nightclub",
    address: " 3556 Blvd St Laurent, Montreal",
    remote_photo_url: "http://www.barmontreal.com/wp-content/themes/corporate/images/tmp/ivy/ivypic.jpg",
    description: "Vibrant, over-18 nightspot open weekends only & featuring DJs, dancing & bars serving drinks.",
    price: 25,
    postalcode: ", QC H2X 2V1",
    hotness: 4
  )

club8 = Club.create!(
    name: "Balattou Club",
    address: "4372 Blvd St Laurent, Montreal",
    remote_photo_url: "http://balattou.com/wp-content/uploads/2014/02/slider14-900x350.jpg",
    description: "Cozy nightspot with live world-beats performances & visiting DJs on weekend nights.",
    price: 10,
    postalcode: ", QC H2W 1Z5",
    hotness: 2
  )

club9 = Club.create!(
    name: "Le Belmont",


    address: "4483 Blvd St Laurent, Montreal",
    remote_photo_url: "http://www.lebelmont.com/v2/accueil.jpg",
    description: "High-energy hub for live acts, DJs & dancing, plus pool tables, improv nights & events.",
    price: 20,
    postalcode: ", QC H2W 1Z8",
    hotness: 2
  )

club10 = Club.create!(
    name: "Le Salon Daomé",
    address: "4465 Blvd St Laurent, Montreal",
    remote_photo_url: "http://boulevardsaintlaurent.com/custom-content/uploads/2018/05/SalonDaome-Cover1.png",
    description: "Laid-back nightclub with a roster of international DJs spinning electronic music, plus theme nights.",
    price: 15,
    postalcode: ", QC H2W 1Z8",
    hotness: 4
  )

club11 = Club.create!(
    name: "Le Wagon",
    address: "5333 Avenue Casgrain",
    remote_photo_url: "https://cdn-images-1.medium.com/max/1600/1*MNAbkCk1IgeC5NLPa0d-NQ.jpeg",
    description: "Come experince Le Wagon nightclub, cozy-vibe with live acts and DJs",
    price: 20,
    postalcode: ",QC  H2T 1X3"
  )
puts "Club done"


puts "Creating videos"
# Video.create!(
#   club: club1,
#   user: User.first,
#   video: File.open("db/videos/01BLVD44.mp4")
# )

Video.create!(
  club: club10,
  user: User.first,
  video: File.open("db/videos/02APT200.mp4")

)

Video.create!(
  club: club10,
  user: User.first,
  video: File.open("db/videos/03MUZ.mp4")
)

Video.create!(
  club: club10,
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
# Le Wagon Comments
Comment.create!(
  content: "Le Wagon  is the best!!!" ,
  club: club11 ,
  user: mg
  )
Comment.create!(
  content: "Found Le Wagon because of Club XP" ,
  club: club11,
  user:antoine
  )
Comment.create!(
  content: "DJs know how play a great set" ,
  club: club11,
  user: aline
  )
Comment.create!(
  content: "10/10 would definately come back" ,
  club: club11,
  user: martin
  )
Comment.create!(
  content: "I'm invinting all my friends next time, tonight was fantastic!" ,
  club: club11,
  user: stephane
  )
Comment.create!(
  content: "I flew from New York for this glad I came thank you Club XP" ,
  club: club11,
  user: tim
  )
# Comment.create!(
#   content: "" ,
#   club11: ,
#   user:
#   )
puts " done comment"

puts "adding music genre to a club"

ClubGenre.create!( name: "Hip-Hop" , club: club1)
ClubGenre.create!( name: "Dancehall" , club: club1)
ClubGenre.create!( name: "Hip-Hop" , club: club2)
ClubGenre.create!( name: "Dancehall" , club: club2)
ClubGenre.create!( name: "Hip-Hop" , club: club3)
ClubGenre.create!( name: "Dancehall" , club: club3)
ClubGenre.create!( name: "Hip-Hop" , club: club4)
ClubGenre.create!( name: "Dancehall" , club: club4)
ClubGenre.create!( name: "Hip-Hop" , club: club5)
ClubGenre.create!( name: "Dancehall" , club: club5)
ClubGenre.create!( name: "Hip-Hop" , club: club6)
ClubGenre.create!( name: "Dancehall" , club: club6)
ClubGenre.create!( name: "Hip-Hop" , club: club7)
ClubGenre.create!( name: "Dancehall" , club: club7)
ClubGenre.create!( name: "Hip-Hop" , club: club8)
ClubGenre.create!( name: "Dancehall" , club: club8)
ClubGenre.create!( name: "Hip-Hop" , club: club9)
ClubGenre.create!( name: "Dancehall" , club: club9)
ClubGenre.create!( name: "Hip-Hop" , club: club10)
ClubGenre.create!( name: "Dancehall" , club: club10)

puts "done"

puts "adding favorites to wilson"

Favorite.create!(user: User.first , club: club1)
Favorite.create!(user: User.first , club: club2)
Favorite.create!(user: User.first , club: club3)


puts "Done adding favorites to wilson"


puts ""

OTHER_CLUBS = [club2, club3, club4, club5, club6, club7, club8, club9, club10]
OTHER_USERS = User.where.not(first_name:["Wilson", "Ryan", "Martin", "Antoine", "Stephane", "Aline", "Marie-G", "Timothée*"])
COMMENTS = [
  "Amazing right now!",
  "It's lit!!!",
  "Thanks Club XP!!",
  "Tell your friends about Club XP!",
  "I won't forget this night all thanks to Club XP",
  "Music is on point :D",
  "DJs know how to keep a party going",
  "Club XP knows how to find promoters",
  "Very cool space, young music #goodvibes ",
  "Best club in montreal with its own vibe",
  "Great staff and drinks",
  "BEST PARTY PLACE EVER IF YOU VISIT MONTREAL",
  "A perfect cozy bar with good music and atmosphere.",
  "Always a good vibe there"
  ]

OTHER_CLUBS.each do |club|
  OTHER_USERS.each do |user|
    Comment.create({
      user: user,
      club: club,
      content: COMMENTS.sample
    })
  end
end
