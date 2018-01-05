
# app has been created
rails new parking_app --database=postgresql

# Devise gem added
gem 'devise' # bi

# development.rb
config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }

# routes
# landing page
root to: 'main#home'

# views/application.html.erb
<!-- #devise -->
<!-- <p class="notice" id="green"><%= notice %></p> -->
<!-- <p class="alert" id="red"><%= alert %></p> -->

rails g devise User

# Made some changes in the devise.rb




# Deployed to Heroku

gsparking.herokuapp.com

heroku git:remote -a gsparking
heroku run rake db:migrate
heroku run rake db:seed


# Deploying API keys to Heroku

heroku config:set EXAMPLE_API=12312313123131313132
