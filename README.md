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

# EATHAN TO COMPLETE
website purpose


---
###   Functionality & Features

# EATHAN TO COMPLETE

website Functionality
website features

---
###  Screenshots

# EATHAN TO COMPLETE

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

# EATHAN TO COMPLETE


---
### User Stories:
#### Buyer User Stories:
* As a Buyer, I want to create an account, so that I can buy and browse on the website.
* As a Buyer, I want to create an account, so that I can buy, sell and browse on the website.
* As a Buyer, I want to pay with credit card, so I can complete a purchase.
* As a Buyer, I want to message other users, so I can enquire about items and respond to enquiries.
* As a Buyer, I want to search listings, so that I can find something specific within listed items.
* As a Buyer, I want to edit or delete my existing listings, so that I can change the description or remove the listing.
* As a Buyer, I want to add images to the item I’m listing, so that users can see a visual representation of the item listed.
* As a Buyer, I want to add a description of the item I’m listing, so that users can view a description of the item listed.
* As a Buyer, I want to list items for sale, so that users can see and purchase my items.
* As a Buyer, I want to view listed items, so that I can choose whether or not to make a purchase.
* As a Buyer, I want to create an account, so that I can buy and sell on the website.
* As a Buyer, I want to receive an e-mail receipt, so that I can see the purchasing details.
* As a Buyer, I want to see information about camouflage patterns, so I can find the right style for me.
* As a Buyer, I want a user account page, so I can update my account information.
* As a Buyer, I want to search for camouflage for types relating to specific environments and countries, so that I can find a suitable camouflage for my needs.
* As a Buyer, I want to see what items I currently have listed for sale, so I can keep track ofwhat I’m selling.
* As a Seller, I want to list items for sale, so that users can see and purchase my items.

#### Seller User Stories:
* As a Seller, I want to create an account, so that I can sell, manage my items, and browse on the website.
* As a Seller, I want to message other users, so I can enquire about items and respond to enquiries.
* As a Seller, I want to view listed items, so that I can choose whether or not to make a purchase.
* As a Seller, I want to search listings, so that I can find something specific within listed items.
* As a Seller, I want to find information about camouflage patterns, so I know what it is and can be used for.
* As a Seller, I want a user account page, so I can update my account information.
* As a Seller, I want to edit or delete my existing listings, so that I can change the description or remove the listing.
* As a Seller, I want to add images to the item I’m listing. , so that users can see a visual representation of the item listed.
* As a Seller, I want to add a description of the item I’m listing, so that users can view a description of the item listed.
* As a Seller, I want to see what items I currently have listed for sale, so I can keep track of what I’m selling.
* As a Seller, I want to pay with my credit card, so that I can complete a purchase.
* As a Seller, I want to search for camouflage for types relating to specific environments and countries, so that I can find a suitable camouflage for my needs.
* As a Seller, I want to receive an e-mail receipt after purchase has been completed, so that I can see the purchasing details.

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
* An strech goal for the project will be to provide a database on various camouflage related history and patterns.

### 2. Identify the problem you’re trying to solve by building this particular marketplace App? Why is it a problem that needs solving?
Currently no similar camouflage orientated marketplace exists, and since 1943 camouflage has being incorporated in the fashion world. In modern times camouflage fashion has become an important market and we believe it hasn't been exploited fully.

### 3. Describe the project you will be conducting and how your App will address these needs.
We will be building a two sided marketplace that offers a location for users to buy, sell and trade camouflage clothing and items. As a strech goal it will also provide users with information pertaining to all aspects of camouflage in a global context.

### 4. Describe the network infrastructure the App may be based on.
The network infrastructure for this app include the following services:
  1. Heroku
  2. Devise
  3. Stripe
  4. Amazon Web Services

As our Heroku app server is based in the US, we decided to base our AWS server in the US as well (us-east-1). As the servers are going to be located close to each other we hope the performance of our web app to be improved.

### 5. Identify and describe the software to be used in your App.
Some of the software used in the development of this app include:
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
  
### 6. Identify the database to be used in your App and provide a justification for your choice.
We decided to use postgresql for our database as it supports a wide range of data types allowing us to upscale our website

db design structure

(Here I would talk about how postgres is different to sqlite, justify how postgres is way more powerful and how it fits really nicely into rails.
)

### 7. Identify and describe the production database setup (i.e. postgres instance).
postgres database with this talbes: (show schema, or postgress output)

(Here I would talk about the specifics of postgres, how it connects to your models, how it sits in overall MVC
)

### 8. Describe the architecture of your App.
(Is this describing MVC in relation to our map? i.e. the MVC model diagram Matt drew?

Yes go into detail about MVC, don’t describe any model associations yet
)

### 9. Explain the different high-level components (abstractions) in your App.

As an beginner-level Rails developer I'm finding rails is a perfect level of abstraction for most types of web development.
However I'm finding that we use Gems to an extent that it's often pretty difficult to figure out what's going on in the code. I've had a pretty hard time digging through code to figure out how things work, and I'm struggling to see the payoff of this approach.


### 10. Detail any third party services that your App will use.

Devise - So users can signup, login and logout. Authentication.
Stripe - We're using the stripe API in our code so that we can process credit card payments.
Pundit - Is used as a user authorization method.
Heroku - We're using Heroku to host our live website. So it can be see via the URL supplied.
AWS - Amazon Web Services is being used to host our images  

### 11. Describe (in general terms) the data structure of marketplace apps that are similar to your own (e.g. eBay,   Airbnb).

Our marketplace is comparable in data structure to any other two sided marketplace.
A user is able to both list items for sale as well as purchase products.

The user is able to see items for sale as-well as list items they would like to sell.
The user can both pay and receive payments.
Order products and receive orders.
View their orders as-well as see orders made.
Upload images to represent what they're selling.
etc.

User, Product, Order, OrderToProduct

### 12. Discuss the database relations to be implemented.
User many to many  products
Orders one to many products

(This is more regarding why we need a join table in certain instances in your app, why we need a foreign keys in different tables, think about the stuff we did when we first started sql
)

### 13. Describe your project’s models in terms of the relationships (active record associations) they have with each other.
User has many products
Products has many users ....

(Think about rails active record associations, has_many, has_one, belongs_to
)

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
* Refer to UserStories in README

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
We decided to use GitHub Projects to manage our tasks. Before start, each morning we had a chat to discuss what were the goals for the day and what each team member is working on. We also discussed what were the current issues we were facing and then as a team created a few issues in GitHub and allocated a responsible team member.

Communication continued during the day but usually everyone was assinged different tasks and everytime we completed an important stage we added a commit comment to close the issue in GitHub.

### 18. Discuss how Agile methodology is being implemented in your project.
We implemented agile methodolgy by:
* Regularly testing our app
* Deploying and getting customer feedback early.
* Focusing in software functionality first.
* Implementing daily morning meetups allowing face to face conversation were we could discuss goals and issues ahead.
* Aim for a sustainable development so we could maintain a constant pace.

### 19. Provide an overview and description of your Source control process.
We decided that each team member was going to have access to push and authorize pull request in GitHub. We found this helped us to develop and deploy our website fast but also required us to communicate often and have a discussion of what changes we were implementing. Aslo, depending of the complexity of the pull request we reviewed the code as a team in order to avoid issues later.

### 20. Provide an overview and description of your Testing process.

(As Scott just mentioned on slack feedback from another student would suffice.
)



### 21. Discuss and analyse requirements related to information system security.
(Make this a more general analysis of the ethics behind handling user data.
)

### 22. Discuss methods you will use to protect information and data.
(Encryption - hashing passwords automatically.
Stripe - what manages and protects all credit card information
Pundit - controls authorisations and what users can see.)

### 23. Research what your legal obligations are in relation to handling user data.

In handling user data, we must make sure we stick to privacy laws. 
As a business owner, it is our responsibility to protect personal information from things like; theft, loss, unauthorised access and modification. 
As permitted under the Privacy Act 1988, we have to take reasonable steps to destroy or de-identify personal information once it is no longer needed.
