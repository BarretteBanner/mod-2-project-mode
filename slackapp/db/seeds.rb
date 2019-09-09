User.destroy_all
Post.destroy_all
Channel.destroy_all
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create({
    full_name: "Barrette Banner",
    display_name: "Barrette",
    bio: "I love to rock climb!",
    age: 21,
    password: "password",
})

user2 = User.create({
    full_name: "Emily",
    display_name: "Emily",
    bio: "I like to play ping-pong!",
    age: 21,
    password: "password",
})

user1 = User.create({
    full_name: "Guss Edwards",
    display_name: "German Dude",
    bio: "I love to explore!",
    age: 21,
    password: "password",
})

channel1 = Channel.create({
    name: "Flatirion SE",
    description: "Your go to for code related questions."
})

post1 = Post.create({
    content: "I love this place!",
    user_id: user1.id,
    channel_id: channel1.id
})

post2 = Post.create({
    content: "Free food on 10!",
    user_id: user2.id,
    channel_id: channel1.id
})



