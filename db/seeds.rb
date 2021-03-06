require 'open-uri'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Post.destroy_all
Follow.destroy_all
Like.destroy_all

demo = User.create(username: 'demoDoge', email: 'demo@woof.com', password: "password")
user1 = User.create(username: 'lotushowls', email: 'lotus@woof.com', password: "password")
user2 = User.create(username: 'snoopie', email: 'snoopie@woof.com', password: "password")
user3 = User.create(username: 'NoodlePoodle', email: 'noodle@woof.com', password: "password")
user4 = User.create(username: 'SheepHerder', email: 'sheperd@woof.com', password: "password")
user5 = User.create(username: 'GoldieLox', email: 'goldie@woof.com', password: "password")

demo_avatar = open('https://woofblr-dev.s3-us-west-1.amazonaws.com/doge.png')
demo.avatar.attach(io: demo_avatar, filename: 'doge.png')
avatar1 = open('https://woofblr-dev.s3-us-west-1.amazonaws.com/avatar1.jpg')
user1.avatar.attach(io: avatar1, filename: 'avatar1.png')
avatar2 = open('https://woofblr-dev.s3-us-west-1.amazonaws.com/avatar2.jpg')
user2.avatar.attach(io: avatar2, filename: 'avatar2.png')
avatar3 = open('https://woofblr-dev.s3-us-west-1.amazonaws.com/avatar3.jpg')
user3.avatar.attach(io: avatar3, filename: 'avatar3.png')
avatar4 = open('https://woofblr-dev.s3-us-west-1.amazonaws.com/avatar4.jpg')
user4.avatar.attach(io: avatar4, filename: 'avatar4.png')
avatar5 = open('https://woofblr-dev.s3-us-west-1.amazonaws.com/avatar5.jpg')
user5.avatar.attach(io: avatar5, filename: 'avatar5.png')

post1 = Post.create(title: 'Woof World!', content: 'This is my first woof.', post_type: 'text', author_id: demo.id)
post2 = Post.create(title: '', content: 'Check out my new gaming setup!', post_type: 'photo', author_id: user1.id )
post3 = Post.create(title: 'Met the Loch Ness Monster today', content: 'I was terrier-fied!', post_type: 'text', author_id: user2.id)
post4 = Post.create(title: '', content: 'Doge coin mining!', post_type: 'photo', author_id: user3.id )
post5 = Post.create(title: 'It was raining cats and dogs', content: 'I stepped in a poodle.', post_type: 'text', author_id: user4.id)
post6 = Post.create(title: 'Dalmatians hide so you don’t spot them.', content: 'me', post_type: 'quote', author_id: user5.id)
post7 = Post.create(title: '', content: 'This pumpkin is huuuuuuge!', post_type: 'photo', author_id: user1.id )
post8 = Post.create(title: 'I ruff you.', content: 'I will never fur-get you.', post_type: 'text', author_id: user2.id)
post9 =  Post.create(title: '', content: 'Tacos for dinner. Nom nom nom!', post_type: 'photo', author_id: user1.id )
post10 = Post.create(title: '', content: "How I feel when I'm coding...", post_type: 'photo', author_id: user5.id)
post11 = Post.create(title: 'SQUIRREL', content: 'Doug', post_type: 'quote', author_id: user2.id)
post12 =  Post.create(title: '', content: 'Be mine?', post_type: 'photo', author_id: user1.id )
post13 = Post.create(title: '', content: 'Here kitty kitty...', post_type: 'photo', author_id: user4.id )
post14 =  Post.create(title: '', content: 'Dressed for the rain 🌧', post_type: 'photo', author_id: user1.id )
post15 = Post.create(title: '', content: "I swear it wasn't me..", post_type: 'photo', author_id: user2.id )
post16 =  Post.create(title: '', content: 'Anyone else excited for bubble tea?', post_type: 'photo', author_id: user1.id )
post17 = Post.create(title: 'People who hate dogs are re-pug-nant', content: 'someone', post_type: 'quote', author_id: user3.id)
post18 = Post.create(title: '', content: 'Just a poodle floatin on a noodle.', post_type: 'photo', author_id: user3.id )
post19 =  Post.create(title: '', content: ':3', post_type: 'photo', author_id: user1.id )
post20 = Post.create(title: 'Remain paw-sitive.', content: 'Don’t stop retrieving.', post_type: 'text', author_id: user4.id)

like1 = Like.create(user: demo, post: post4)
like2 = Like.create(user: user1, post: post2)
like3 = Like.create(user: user1, post: post4)
like4 = Like.create(user: user1, post: post6)
like5 = Like.create(user: user1, post: post8)
like6 = Like.create(user: user1, post: post10)
like7 = Like.create(user: user1, post: post12)
like8 = Like.create(user: user1, post: post14)
like9 = Like.create(user: user1, post: post16)
like10 = Like.create(user: user1, post: post18)
like11 = Like.create(user: user1, post: post20)
like12 = Like.create(user: user2, post: post1)
like13 = Like.create(user: user2, post: post2)
like14 = Like.create(user: user2, post: post3)
like15 = Like.create(user: user2, post: post4)
like16 = Like.create(user: user2, post: post5)
like17 = Like.create(user: user2, post: post6)
like18 = Like.create(user: user2, post: post7)
like19 = Like.create(user: user2, post: post8)
like20 = Like.create(user: user2, post: post9)
like21 = Like.create(user: user2, post: post10)
like22 = Like.create(user: user2, post: post11)
like23 = Like.create(user: user2, post: post12)
like24 = Like.create(user: user2, post: post13)
like25 = Like.create(user: user2, post: post14)
like26 = Like.create(user: user2, post: post15)
like27 = Like.create(user: user2, post: post16)
like28 = Like.create(user: user2, post: post17)
like29 = Like.create(user: user2, post: post18)
like30 = Like.create(user: user2, post: post19)
like31 = Like.create(user: user2, post: post20)
like32 = Like.create(user: user3, post: post1)
like33 = Like.create(user: user3, post: post4)
like34 = Like.create(user: user3, post: post7)
like35 = Like.create(user: user3, post: post10)
like36 = Like.create(user: user3, post: post13)
like37 = Like.create(user: user3, post: post16)
like38 = Like.create(user: user3, post: post19)
like39 = Like.create(user: user4, post: post20)
like40 = Like.create(user: user4, post: post16)
like41 = Like.create(user: user4, post: post12)
like42 = Like.create(user: user4, post: post8)
like43 = Like.create(user: user4, post: post4)
like44 = Like.create(user: user5, post: post7)
like45 = Like.create(user: user5, post: post13)

gamer_girl = open('https://woofblr-dev.s3-us-west-1.amazonaws.com/gamer_girl.jpg')
post2.photo.attach(io: gamer_girl, filename: 'gamer-girl.jpg')
doge_mining = open('https://woofblr-dev.s3-us-west-1.amazonaws.com/doge-mining.gif')
post4.photo.attach(io: doge_mining, filename: 'doge-mining.gif')
pumpkin_girl = open('https://woofblr-dev.s3-us-west-1.amazonaws.com/pumkin_girl.jpg')
post7.photo.attach(io: pumpkin_girl, filename: 'pumpkin-girl.jpg')
taco_girl = open('https://woofblr-dev.s3-us-west-1.amazonaws.com/taco_girl.jpg')
post9.photo.attach(io: taco_girl, filename: 'taco-girl.jpg')
code_boy = open('https://woofblr-dev.s3-us-west-1.amazonaws.com/code_boy.jpg')
post10.photo.attach(io: code_boy, filename: 'code-boy.jpg')
rose_girl = open('https://woofblr-dev.s3-us-west-1.amazonaws.com/rose_girl.jpg')
post12.photo.attach(io: rose_girl, filename: 'rose-girl.jpg')
tree_boy = open('https://woofblr-dev.s3-us-west-1.amazonaws.com/tree_boy.jpg')
post13.photo.attach(io: tree_boy, filename: 'tree-boy.jpg')
rain_girl = open('https://woofblr-dev.s3-us-west-1.amazonaws.com/rain_girl.jpg')
post14.photo.attach(io: rain_girl, filename: 'rain-girl.jpg')
bad_boy = open('https://woofblr-dev.s3-us-west-1.amazonaws.com/bad_boy.jpg')
post15.photo.attach(io: bad_boy, filename: 'bad-boy.jpg')
boba_girl = open('https://woofblr-dev.s3-us-west-1.amazonaws.com/boba_girl.jpg')
post16.photo.attach(io: boba_girl, filename: 'boba-girl.jpg')
noodle_poodle = open('https://woofblr-dev.s3-us-west-1.amazonaws.com/noodle_poodle.jpg')
post18.photo.attach(io: noodle_poodle, filename: 'noodle-poodle.jpg')
baby_girl = open('https://woofblr-dev.s3-us-west-1.amazonaws.com/baby_girl.jpg')
post19.photo.attach(io: baby_girl, filename: 'baby-girl.jpg')

follow1 = Follow.create(following_id: demo.id, follower_id: user1.id) #user1 follows demo
follow2 = Follow.create(following_id: user2.id, follower_id: demo.id) 
follow3 = Follow.create(following_id: user1.id, follower_id: demo.id)