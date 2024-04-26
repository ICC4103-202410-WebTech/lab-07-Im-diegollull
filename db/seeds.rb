# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Post.delete_all
User.delete_all
Tags.delete_all
Post_tag.delete_all



usr1 = User.create!(
    name: 'John Doe',
    email: 'jdoez@example.com',
    password: 'abc12345'
)

usr2 = User.create!(
    name: 'John Snow',
    email: 'JS@example.com',
    password: 'password123'
)

usr3 = User.create!(
    name: 'Ragnar Lodbrock',
    email: 'Rlodbrock@example.com',
    password: 'password123'
)

usr4 = User.create!(
    name: 'Harvey Specter',
    email: 'Specter@example.com',
    password: 'password123'
)

usr5 = User.create!(
    name: 'Charlie D´melio',
    email: 'charlie@example.com',
    password: 'password123'
)



pst1 = Post.create!(
    title: 'Post 1',
    content: 'Hello World??',
    user: usr1,
    published_at: Time.now,
    answers_count: 50,
    likes_count: 100
)

pst2 = Post.create!(
    title: 'El segundo mejor post',
    content: 'Este es el contenido del segundo mejor post del mundo',
    user: usr2,
    published_at: Time.now,
    answers_count: 17,
    likes_count: 17
)

pst3 = Post.create!(
    title: 'Exploring Ruby on Rails',
    content: 'Let\'s dive deep into Rails magic!',
    user: usr3,
    published_at: Time.now,
    answers_count: 50,
    likes_count: 100
)

pst4 = Post.create!(
    title: 'Learning to Code',
    content: 'Starting my coding journey today!',
    user: usr4,
    published_at: Time.now,
    answers_count: 10,
    likes_count: 250
)

pst5 = Post.create!(
    title: 'Adventures in Coding',
    content: 'What an adventure this has been!',
    user: usr5,
    published_at: Time.now,
    answers_count: 15,
    likes_count: 300
)

pst6 = Post.create!(
    title: 'Reflections on Learning',
    content: 'Reflecting on my learning journey in tech.',
    user: usr5,
    published_at: Time.now,
    answers_count: 25,
    likes_count: 15
)

pst7 = Post.create!(
    title: 'Tech and Coffee',
    content: 'How coffee powers my coding sessions.',
    user: usr4,
    published_at: Time.now,
    answers_count: 50,
    likes_count: 100
)

pst8 = Post.create!(
    title: 'Coder\'s Life',
    content: 'Day in the life of a coder.',
    user: usr3,
    published_at: Time.now,
    answers_count: 50,
    likes_count: 100
)

pst9 = Post.create!(
    title: 'The Art of Programming',
    content: 'Discussing the art and science of programming.',
    user: usr2,
    published_at: Time.now,
    answers_count: 9,
    likes_count: 300
)

pst10 = Post.create!(
    title: 'Why Code?',
    content: 'Exploring reasons to learn programming.',
    user: usr1,
    published_at: Time.now,
    answers_count: 6,
    likes_count: 150
)

# Create Tags

tg1 = Tag.create!(
  name: "#LearningRails"
)

tg2 = Tag.create!(
  name: "#MultiverseAdventures"
)

tg3 = Tag.create!(
  name: "#SciFiFan"
)

tg4 = Tag.create!(
  name: "#ComedyGold"
)

tg5 = Tag.create!(
  name: "#Existentialism"
)



pst1.tags << tg1
pst2.tags << tg2
pst3.tags << tg1
pst4.tags << tg1
pst5.tags << tg5
pst6.tags << tg5
pst7.tags << tg4
pst8.tags << tg3
pst9.tags << tg4
pst10.tags << tg1
