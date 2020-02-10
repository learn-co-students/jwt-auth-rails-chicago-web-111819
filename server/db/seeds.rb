
puts "Begin: Destroying Users"
User.where.not(username: "sylviawoods").destroy_all
puts "End: Destroying Users"

puts "Begin: Adding Users"
15.times do
  User.create(
    username: Faker::TvShows::Friends.character, password: 'hi', avatar: Faker::Fillmurray.image.split("//").join("//www."), bio: Faker::TvShows::Friends.quote
  )
end
puts "Sample URL: #{Faker::Fillmurray.image}"
puts "End: Adding Users"

# *** Fix 'avatar' url ***
# User.update_all("avatar = REPLACE(avatar, '//', '//www.')")

# User.where(username: "sylviawoods").update_all("avatar = 'https://commons.wikimedia.org/wiki/Category:Image_placeholders_(square)#/media/File:Plant_No_Image.svg'")

