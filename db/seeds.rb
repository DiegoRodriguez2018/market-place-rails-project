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

categories = ["Snow","Woodland and Jungle", "Dessert and Beach", "Urban"]

categories.each do |category|
    Category.create(name: category)
end

entries = ['2.AusCam Woodland.jpg','2.Barracuda_Woodland.jpg','2.Comma.jpg','2.Elm-Leaf.jpg','2.M49.jpg','2.palm frond.jpg','2.Plane-Tree.jpg','2.South-African Grass.jpg','2.Spindly Finger.jpg','2.Trebark.jpg','3.Amoeba.jpg','3.Czech Desert.jpg','3.Daguet.jpg','3.Deer Hunter.jpg','3.Desert Cloud.jpg','3.Duck Hunter.jpg','3.Four Colour Desert DPM.jpg','3.Frog-Skin Beach.jpg','3.M98 desert.jpg','3.night time desert grid.jpg','3.NunChuck.jpg','3.Oak-Leaf.jpg','3.Sand.jpg','3.six-colour desert.jpg','3.Splinter.jpg','3.Swedish Desert Trial Pattern.jpg','3.three-colour desert.jpg','3.Two Colour DPM.jpg','4.Bape Peter.jpg','4.Bubble.jpg','4.GaboneseGendarmerie.jpg','4.G-Camo.jpg','4.Latvian Two-Colour Urban.jpg','4.Lebo Urban DPM.jpg','4.SWAT.jpg','4.Thai Night Manouevres.jpg','4.The Rock Machine.jpg','4.Two-Colour Urban.jpg','4.Urban British DPM.jpg','4.Urban Woodland Swat.jpg']

def get_title (str)
    result = str.split("")
    result.pop(4)
    result.shift(2)   
    result = result.join("")     
end
def get_category_id (str)
    result = str.split("")
    id = result.shift.to_i
end
def get_category_name (str, categories)
    result = str.split("")
    id = result.shift.to_i
    categories[id-1]
end
entries.each do |entry|
    temp = Product.create(
        title: get_title(entry) ,
        price: rand(500..6000) ,
        description: "10m2 of #{get_title(entry)} camouflage ideal for #{get_category_name(entry,categories)} terrain." ,
        stock: 100,
        user: User.first,
        category: Category.find(get_category_id(entry))
    )
    file = Rails.root.join('db','img',entry) 
    temp.image.attach(
        io: File.open(file),
        filename: entry
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