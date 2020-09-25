# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
calvin = User.create(username: "Calvin" , bio: "love and art" , password_digest: "1234", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e2/CK_Calvin_Klein_logo.svg/1200px-CK_Calvin_Klein_logo.svg.png")
sebastion = User.create(username: "Sebastion", bio: "Lets do it!!" , password_digest: "1234", image: "https://avatars2.githubusercontent.com/u/4927493?s=460&v=4")
carl = User.create(username: "carl" , bio: "aint nothing but a g thing" , password_digest: "1234", image: "https://pyxis.nymag.com/v1/imgs/52c/217/2f7958868baf3a920988744d3e70e0f02d-23-carl-twd.rsquare.w700.jpg")


fantasy = Category.create(kind: "Fantasy")
literature = Category.create(kind: "literature")

post1 = Post.create(title: "Eevee" , content: "http://www.pokego.org/assets/img/pokemon/eevee-pokemon-go.png" ,description: "picture of eevee", views: 3, user: calvin , category: fantasy)
post2= Post.create(title: "Space" , content: "https://images.unsplash.com/photo-1451187580459-43490279c0fa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1952&q=80", description: "Space", views: 4, user: sebastion, category:fantasy)
post3= Post.create(title: "Statue" , content: "https://images.unsplash.com/photo-1549887534-1541e9326642?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2801&q=80", description: "Statue", views: 16, user: carl, category:fantasy)
post4= Post.create(title: "Sea" , content: "https://images.unsplash.com/photo-1507525428034-b723cf961d3e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1953&q=80", description: "Sea", views: 17, user: calvin, category:fantasy)
post5= Post.create(title: "Mountains" , content: "https://images.unsplash.com/photo-1549880338-65ddcdfd017b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80", description: "Mountains", views: 19, user: sebastion, category:fantasy)
post6= Post.create(title: "Desert" , content: "https://images.unsplash.com/photo-1473580044384-7ba9967e16a0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80", description: "Desert", views: 21, user: carl, category:fantasy)
post7= Post.create(title: "Flower" , content: "https://images.unsplash.com/photo-1490750967868-88aa4486c946?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80", description: "Flower", views: 33, user: sebastion, category:fantasy)

comment1 = Comment.create(content: "I love eevee to ! lets be freinds!!!", user: sebastion , post: post1)
comment2 = Comment.create(content: "EEVOLUTION!!!", user: carl , post: post1)

like1 = Like.create(likes: 37 , post: post1, user: sebastion)
