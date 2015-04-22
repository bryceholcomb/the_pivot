# The Pivot || TravelHome

This three week group Ruby on Rails project was a pivot from a food ordering site into a space listing website with hosts and guests. It features booking requests stored in the session, Administrative Dashboard, and filter based queries.

Full project specifications are available here:
http://tutorials.jumpstartlab.com/projects/the_pivot.html

## Setup
bundle
rake db:setup

## Notes
* A User becomes a host once a space is listed. In order to have access to the administrative dashboard, you must post a listing.
* In Order to see a user profile you must sign up as a user.

## Tests
* To run a test: 'rspec'

### Here's what you'll need to do after pulling to get it working on heroku
* `bundle install`
* `git push heroku master`
* `heroku pg:reset`
* `heroku run rake db:schema:load db:seed`
* `heroku open`
