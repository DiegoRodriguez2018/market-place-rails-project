# README
This project is a combined effort of:
* [Diego Rodriguez](https://github.com/DiegoRodriguez2018)
* [Eathan Langford](https://github.com/EathanLangford)
* [Sam Ludwig](https://github.com/Ludwixix)

#### Website URL
https://camo-market.herokuapp.com

#### Github Repository
https://github.com/DiegoRodriguez2018/market-place-rails-project

---
## Project Description

### Problem Definition $ Project Purpose
website purpose


---
###   Functionality & Features
website Functionality
website features

---
###  Screenshots

INSERT Screenshots

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
Instructions on how to setup, configure and use your App.
Users:
1. Head to https://camo-market.herokuapp.com 
2. Sign up for a free account, you will need your email and a safe password.
3. You will be presented with a few options:
    1. Sell, will allow you to list your item and upload an image of it. It also will dislpay all the items you have listed in the past. 
    2. Buy, will display a variety of items for sale in the platform. 
    3. My Orders, will show all the previous orders that you have requested. 
    4. About, will display a short description of our platform propose and vision.
    5. Contact, will display means to get in contact with the support team.

Developers:
Recommended software requirements for developers:  
    1. Ruby 2.4.1
    2. Ruby on Rails 5.2.1
    3. Postgresql 

Developers also will need an active account for the following services:
    1. Stripe
    2. Amazon Web Services (AWS)  and Heroku if planning to deploy. 

---
#### Running locally
To run locally you will need to do the following steps:
1. Clone the repository by running: `git clone git@github.com:DiegoRodriguez2018/market-place-rails-project.git`
2. In terminal open the market-place-rails-project folder and install the corresponing gems by running: `bundle install`
3. To run locally you might also need to create a .env file and add the corresponding Stripe keys:
```
PUBLISHABLE_KEY =<your publishable key>
SECRET_KEY =<your secret key>
```
IMPORTANT: Remember to add .env to your .gitignore so you dont make your keys public. 



4. Then setup your database by running:
  1. `rails db:create`
  2. `rails db:migrate`
  3. `rails db:seed` (in case you want to include some sample data)
5. Run `rails server` 

Now you should be able to see a running version of the website when opening localhost:3000/ in your browser.

---
#### Deploying
To deploy in heroku you will need to do the following:
1. Create Heroku and AWS (S3) accounts. 
2. In the AWS dashboard create a new bucket to store the website Active Record images. 
3. In Heroku dashboard create a new app and set up all your keys under settings>config vars. Here you need to set up your AWS and Stripe keys. 
4. Copy your git repository to heroku by typing: `git push heroku master`
5. Set up your database by running:
  1. `heroku run rake db:migrate`
  2. `heroku run rake db:seed` (optional, just in case you want some sample data in your database)

Now you should be able to go to your heroku app website  and see the live version of the webapp. 

Tip: You can open your heroku app website from terminal by typing: `heroku open` 


---
### Design Documentation

#### Design process

<EATHAN TO COMPLETE>

---
#### User Stories:

<SAM TO COMPLETE>

#### Workflow Diagram of the User Journey/s:
We used figma to create a User Stories / Workflow Diagram of the project.
![img](docs/stories.png)
![img](docs/stories1.png)

---
#### Wireframes
### Inspiration:
![Image](docs/inspiration.png) 
### Colour Inspiration:
![Image](docs/colour-inspiration.png) 
### Logo Inspiration:
![Image](docs/logo-inspiration.png) 
### Basic Wireframes:
#### Desktop:
![Image](docs/desktop1.png)
![Image](docs/desktop2.png) 
#### Mobile:
![Image](docs/mobile-wireframes.png) 
### Splash Page Wireframes:
#### Desktop:
![Image](docs/splash-desktop.png)
#### Mobile:
![Image](docs/splash-mobile.png) 
### Index Page Wireframes:
![Image](docs/products-page.png)
### Show Page Wireframes:
![Image](docs/show-page.png)

---
#### Database Entity Relationship Diagram (ERD)
After discussing about our database structure we agreed to start our project with this database entity relationship diagram:

![img](docs/database-design.png)

#### Database Infastructure
As our Heroku app server is based in the US, we decided to base our AWS server in the US as well (us-east-1). As the servers are going to be located close to each other we hope the performance of our web app to be improved.

---
### Details of planning process:
```
including,
Project plan & timeline
Screenshots of Trello board(s)
```

![Image](docs/githubprojects1.png) GitHub Projects Board #1
![Image](docs/githubprojects2.png) Github Projects Board #2
![Image](docs/githubprojects3.png) Github Projects Board #3
![Image](docs/githubprojects4.png) Github Projects Board #4
![Image](docs/githubprojects5.png) Github Projects Board #5
![Image](docs/githubprojects6.png) Github Projects Board #6
![Image](docs/githubprojects7.png) Github Projects Board #7


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
![img](docs/database-design.png)

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
![Image](docs/inspiration.png) 
### Colour Inspiration:
![Image](docs/colour-inspiration.png) 
### Logo Inspiration:
![Image](docs/logo-inspiration.png) 
### Basic Wireframes:
#### Desktop:
![Image](docs/desktop1.png)
![Image](docs/desktop2.png) 
#### Mobile:
![Image](docs/mobile-wireframes.png) 
### Splash Page Wireframes:
#### Desktop:
![Image](docs/splash-desktop.png)
#### Mobile:
![Image](docs/splash-mobile.png) 
### Index Page Wireframes:
![Image](docs/products-page.png)
### Show Page Wireframes:
![Image](docs/show-page.png)


### 17. Describe the way tasks are allocated and tracked in your project.
### 18. Discuss how Agile methodology is being implemented in your project.
### 19. Provide an overview and description of your Source control process.
### 20. Provide an overview and description of your Testing process.
### 21. Discuss and analyse requirements related to information system security.
### 22. Discuss methods you will use to protect information and data.
### 23. Research what your legal obligations are in relation to handling user data.
