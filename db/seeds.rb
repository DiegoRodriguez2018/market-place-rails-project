# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
Category.delete_all
Product.delete_all
Order.delete_all

User.create(email:"userone@gmail.com", password:"123456")

Category.create(name: "Snow")
Category.create(name: "Woodland and Jungle")
Category.create(name: "Dessert and Beach")
Category.create(name: "Urban")

(1..15).each do |i|
    temp = Product.create(
        title: "Camo fabric #{i}" ,
        price: 20 + i ,
        description: "Camo for special forces #{i}" ,
        stock: i*10,
        user: User.first,
        category: Category.order("RANDOM()").first
    )
    file = Rails.root.join('db','img',"1.jpg") 
    temp.image.attach(
        io: File.open(file),
        filename: "file.jpg"
    )  
end

(1..5).each do |i|
    Order.create(user: User.first,
        shipping_address: "address ##{i}",
        product: Product.find(i),
        product_title: Product.find(i).title,
        product_price: Product.find(i).price,
        quantity: i)
end