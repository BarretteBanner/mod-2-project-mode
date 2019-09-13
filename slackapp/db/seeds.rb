User.destroy_all
Post.destroy_all
Channel.destroy_all
Dm.destroy_all
Message.destroy_all
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

user3 = User.create({
    full_name: "Guss Edwards",
    display_name: "German Dude",
    bio: "I love to explore!",
    age: 21,
    password: "password",
})

channel1 = Channel.create({
    name: "Flatiron SE",
    description: "Your go to for code-related questions."
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
post3 = Post.create({
    content: "I love this place!",
    user_id: user1.id,
    channel_id: channel1.id
})

post4 = Post.create({
    content: "Free food on 10!",
    user_id: user2.id,
    channel_id: channel1.id
})
post5 = Post.create({
    content: "I love this place!",
    user_id: user1.id,
    channel_id: channel1.id
})

post6 = Post.create({
    content: "Free food on 10!",
    user_id: user2.id,
    channel_id: channel1.id
})
post7 = Post.create({
    content: "I love this place!",
    user_id: user1.id,
    channel_id: channel1.id
})

post8 = Post.create({
    content: "Free food on 10!",
    user_id: user2.id,
    channel_id: channel1.id
})

dm1 = Dm.create({
    name: "#{user1.id}/#{user2.id}",
    user1: user1.id,
    user2: user2.id,
    user1name: user1.display_name,
    user2name: user2.display_name
})
dm2 = Dm.create({
    name: "#{user2.id}/#{user1.id}",
    user1: user2.id,
    user2: user1.id,
    user1name: user2.display_name,
    user2name: user1.display_name
})
dm2 = Dm.create({
    name: "#{user2.id}/#{user1.id}",
    user1: user2.id,
    user2: user1.id,
    user1name: user2.display_name,
    user2name: user1.display_name
})


message1 = Message.create({
    content: "Yay, first message!",
    dm_id: dm1.id,
    user_id: user1.id
})


