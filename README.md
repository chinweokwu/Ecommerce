# Rails Ecommerce App

## Overview and Features
This is a simple ecommerce app with a shopping cart functionality and using Avo to populate the product

## Models
1. **Category**
    - has_many :products, dependent: :destroy

1. **Product**:
    - belongs_to :category
    - has_many :orders
    - has_many :carts, through: :orders


2. **Order**:
  - Join Table which bridges Product and Cart.
    - belongs_to :product
    - belongs_to :cart

4. **Cart**:
    - has_many :orders
    - has_many :products, through: :orders


### Installation
You need to have this tools to start using it:
* Ruby - 3.1.0
* Rails - 7.0.3
* Clone the repo git clone git clone https://github.com/chinweokwu/ecommerce_avo_app
* Open your terminal and cd to the project`s folder
* Install gems with using 'bundle install'
* Run migrations with bin/rake db:migrate
* Run 'rails server' and go to your browser 'http://localhost:3000'
* For testing run 'rails console'



## Authors

👤 **Morah Paul**

- GitHub:[@github/chinweokwu](https://github.com/chinweokwu)
- Linkedin:[linkedin/morah](https://www.linkedin.com/)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!
Feel free to check the [issues page]().

## Show your support

Give a ⭐️ if you like this project!