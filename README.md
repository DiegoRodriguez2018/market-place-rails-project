# README

---
## Project Description




This project is a combined effort of:
* [Diego Rodriguez](https://github.com/DiegoRodriguez2018)
* [Eathan Langford](https://github.com/EathanLangford)
* [Sam Ludwig](https://github.com/Ludwixix)

#### Website URL
https://camo-market.herokuapp.com/users/sign_in

#### Github Repository
https://github.com/DiegoRodriguez2018/market-place-rails-project

---
###  Problems Encountered

* Local image seeding: One of the first problems we encountered is how to locally seed images with Active Storage. After getting familiar with the tool and reading some documentation we figure out we had to store it in a temporal variable and use the attach method in our seeds.rb file as shown below:
   ``` ruby
    (1..n).each do |i|
        temp = Product.create(
            title: "Image #{i}" ,
            price: 20 ,
            description: "Image number  #{i}" ,
            user: User.first
        )
        file = Rails.root.join('db','img',"#{i}.jpg")
        temp.image.attach(
            io: File.open(file),
            filename: "file.jpg"
        )  
    end
    ```
*After running `rails db:seed`, the files were successfully added to our database.*

* Heroku Image Seeding: The next challenge was to seed some images in the Heroku repository. The process was pretty much the same with the only difference we had to run Heroku run rails db:seed`


---
###  Purpose
```

website purpose

```
---
###   Functionality
```

website Functionality

```
---
###  features
```

website features

```
---
###  Screenshots
```

INSERT Screenshots

```
---
###  Tech Stack
The tech stack applied in this project include:
* HTML
* CSS
* SCSS
* Ruby on Rails
    * Active Storage
    * Active Record
* Amazon Web Services
* Heroku
* Devise
* Pundit
* Bootstrap
* GIT
* GitHub
* GitHub Projects
* Figma
---
###  Setup & Configuration Instructions
```

    Instructions on how to setup, configure and use your App.

```
---
### Design Documentation
```
Design process
Wireframes
```
---

### User Stories and Workflow diagram:
* This is the UserStories and Workflow digram we created in figma.
![img](readme-images/stories.png)
![img](readme-images/stories1.png)

---

### Database Design:
* ERD: After discussing about our database structure we agreed to the following database structure:

![img](readme-images/database-design.png)
* Infrastructure: As our Heroku app server is based in the US, we decided to base our AWS server in the US as well (us-east-1). As the servers are going to be located close to each other we hope the performance of our web app to be improved.

---
### Details of planning process:
```
including,
Project plan & timeline
Screenshots of Trello board(s)
```

![Image](readme-images/githubprojects1.png) GitHub Projects Board #1
![Image](readme-images/githubprojects2.png) Github Projects Board #2
![Image](readme-images/githubprojects3.png) Github Projects Board #3
![Image](readme-images/githubprojects4.png) Github Projects Board #4
![Image](readme-images/githubprojects5.png) Github Projects Board #5
![Image](readme-images/githubprojects6.png) Github Projects Board #6
![Image](readme-images/githubprojects7.png) Github Projects Board #7

---
# FAQ

### 1. What is the need (i.e. challenge) that you will be addressing in your project?

* To build a marketplace where users can buy, sell, trade camouflage patterns, clothing and related products.
* The website will also provide a database on various camouflage related history and patterns.

### 2. Identify the problem you’re trying to solve by building this particular marketplace App? Why is it a problem that needs solving?

* Currently no purely camouflage orientated marketplace exists.

### 3. Describe the project you will be conducting and how your App will address these needs.

* We will be building a two sided marketplace that offers a location for users to buy, sell and trade camouflage clothing and items. It will also provide users with information pertaining to all aspects of DPM.

### 4. Describe the network infrastructure the App may be based on.
heroku, devise, stripe, aws
### 5. Identify and describe the software to be used in your App.

### 6. Identify the database to be used in your App and provide a justification for your choice.
db design structure

### 7. Identify and describe the production database setup (i.e. postgres instance).
postgres database with this talbes: (show schema, or postgress output)

### 8. Describe the architecture of your App.

### 9. Explain the different high-level components (abstractions) in your App.

### 10. Detail any third party services that your App will use.
devise, stripe, pundit, heroku, aws

### 11. Describe (in general terms) the data structure of marketplace apps that are similar to your own (e.g. eBay,   Airbnb).
user, product, message, converstion, order, orderToProduct, Shopping cart, 

### 12. Discuss the database relations to be implemented.
user many to many  products
orders one to many products


### 13. Describe your project’s models in terms of the relationships (active record associations) they have with each other.
user has many products
products has many users ....


### 14. Provide your database schema design.

#### Database Structure:
![img](readme-images/database-design.png)

#### Activer Record Schema:
```ruby

ActiveRecord::Schema.define(version: 2018_10_30_045941) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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

  create_table "products", force: :cascade do |t|
    t.string "title"
    t.integer "price"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.integer "stock"
    t.bigint "category_id"
    t.index ["category_id"], name: "index_products_on_category_id"
    t.index ["user_id"], name: "index_products_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "orders", "products"
  add_foreign_key "orders", "users"
  add_foreign_key "products", "categories"
  add_foreign_key "products", "users"
end



```



### 15. Provide User stories for your App.
### 16. Provide Wireframes for your App.
### Inspiration:
![Image](readme-images/inspiration.png) 
### Colour Inspiration:
![Image](readme-images/colour-inspiration.png) 
### Logo Inspiration:
![Image](readme-images/logo-inspiration.png) 
### Basic Wireframes:
#### Desktop:
![Image](readme-images/desktop1.png)
![Image](readme-images/desktop2.png) 
#### Mobile:
![Image](readme-images/mobile-wireframes.png) 
### Splash Page Wireframes:
#### Desktop:
![Image](readme-images/splash-desktop.png)
#### Mobile:
![Image](readme-images/splash-mobile.png) 
### Index Page Wireframes:
![Image](readme-images/products-page.png)
### Show Page Wireframes:
![Image](readme-images/show-page.png)


### 17. Describe the way tasks are allocated and tracked in your project.
### 18. Discuss how Agile methodology is being implemented in your project.
### 19. Provide an overview and description of your Source control process.
### 20. Provide an overview and description of your Testing process.
### 21. Discuss and analyse requirements related to information system security.
### 22. Discuss methods you will use to protect information and data.
### 23. Research what your legal obligations are in relation to handling user data.
