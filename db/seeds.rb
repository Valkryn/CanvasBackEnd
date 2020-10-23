# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.destroy_all
# Category.destroy_all
# Post.destroy_all
# Comment.destroy_all
# Like.destroy_all

  calvin = User.create(name: "Calvin" , email: "cg@gmail.com", bio: "love and art" , password_digest: "1234")
  sebastion = User.create(name: "Sebastion" , email: "seb@gmail.com", bio: "Lets do it!!" , password_digest: "1234")
  carl = User.create(name: "carl" , email: "carl@gmail.com", bio: "aint nothing but a g thing" , password_digest: "1234")


  fantasy = Category.create(category_type: "Fantasy")
  literature = Category.create(category_type: "literature")

  post1 = Post.create(title: "Eevee" , content: "http://www.pokego.org/assets/img/pokemon/eevee-pokemon-go.png" ,description: "picture of eevee", view_count: 0, user: calvin , category: fantasy)
  post2= Post.create(title: "Space" , content: "Space is the final frontier", description: "Intro", view_count: 0, user: sebastion, category:literature)

  comment1 = Comment.create(content: "I love eevee to ! lets be freinds!!!", user: sebastion , post: post1)
  comment2 = Comment.create(content: "EEVOLUTION!!!", user: carl , post: post1)

  like1 = Like.create(likes_count: 0 , post: post1, user: sebastion)

  puts "Seeding complete"
