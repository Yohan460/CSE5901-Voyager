# README
###Contributions  
Andrew Storch: Integrating Authentication with Devise, Implementing Admin Rights, Home/views and Partials, Home Controller, Devise Views, Devise Controller Modification, Reservations Controller Modification, Controller Protection via require_authorization, Addition of custom routes.  

Johan McGwire: Updating all model assosiations, generated migrations assosiated with assosiations, updated schema multiple times, Updates all controllers to take in id's to configure assosiations upon creation, data validation on models, room searching on reservations "booking" controller and front end javascript phone data entry masking and front end validation

Frank Evers: Generated the model and controllers using rails generate, designed CSS for entire site, implemented Javascript photocycle, updated views to show ID of table, edits to trip controller, changed view files extensively on almost every page to show better data and work with styling

Eid Alrabadi: Implemented reservations, and boats table
implemented views for boat, and added boat id column. Generated scaffolds/views, updated database, and bug fixes. Website testing. 

###Running This Program
Clone the repository using the following command:  
$git clone https://github.com/cse3901-osu-2017su/Hack-the-Planet-Rails-App.git  

Install the necessary dependencies by running:  
$bundle install

Migrate the database by running:  
$rake db:migrate

Seed the database with example data:  
$rake db:seed

Start the server:
#rails s

### Making an account an admin account
An default admin account is created when the database is seeded. The default username is admin@admin.com and the pass word is 'topsecret'. It is good policy to quickly change the default password to something new.  
A account can me made an admin by entering the console and changing the attribute :admin to true. User.find(id).update_attribute :admin, true .  
