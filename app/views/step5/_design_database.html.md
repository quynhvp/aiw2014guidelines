# Design the database

In this section, we will discuss a very simple model with two entities (tables) and see how it can be designed in Rails.
Let see it:

![Sample entities and relationship](http://guides.rubyonrails.org/images/belongs_to.png)

So we have ** Orders ** and ** Customers **. In the common sense, 1 customer will have many different orders, and 1 order
must belong to a specific customer. We will step by step make this logic into Rails.

### Step 1 - Creating Active Record model in Rails

The very first step after the entities and relationships are drawn is to create the model in Rails. This is totally different
from what we often do in other framework or languages such as PHP, PHP Frameworks... where we will go to Database
Browser to create the tables and relationship manually.

To create the model, open Command Prompt and go to your project folder, using rails generator:

        > rails generate model Customer name:string
        > rails generate model Order customer_id:integer order_date:datetime

Remember to migrate them into database:

        > rake db:migrate

### Step 2 - Define the relationship in Model

Now, open the two files:

*   app/models/customer.rb
*   app/models/order.rb

#### Customer (customer.rb)

Add this line:
        has_many :orders

#### Order (order.rb)

Add this line:
        belongs_to :customer

Now we have the relationship as described in the figure above.

In Rails, there are many other relationships do define, you can see it in [Rails Association Basic](http://guides.rubyonrails.org/association_basics.html).

### Step 3 - Your job with Final Project

Now you know how to create models, define relationships in Rails. Using this knowledge, you should:

1. Define your project entities
2. Generate models and migrate them
3. Define relationships
4. Push updates to GitHub

Next we will discuss ** Active Admin **, a powerful gem for administration.