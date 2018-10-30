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

(1..10).each do |i|
    Category.create(name: "Category ##{i}")
end

(1..15).each do |i|
    temp = Product.create(
        title: "Camo fabric #{i}" ,
        price: 20 + i ,
        description: "Camo for special forces #{i}" ,
        stock: i*10,
        user: User.first,
        category: Category.find(i),
    )
    file = Rails.root.join('db','img',"1.jpg") 
    temp.image.attach(
        io: File.open(file),
        filename: "file.jpg"
    )  
end


create_table "orders", force: :cascade do |t|
    t.bigint "user_id"
    t.string "shipping_address"
    t.bigint "product_id"
    t.string "product_title"
    t.string "product_price"
    t.string "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_orders_on_product_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

(1..5).each do |i|
    Order.create(user: User.first,
        shipping_addres: "address ##{i}",
        product: Product.find(i),
        product_title: Product.find(i).title,
        product_price: Product.find(i).price,
        quantity: i)
end