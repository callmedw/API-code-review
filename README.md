# _Creature Animal Shelter API_

#### _This is a Rails API that serves information about creatures currently housed at the animal shelter, or creature shelter, if you will_

## Built With

* [Ruby](https://www.ruby-lang.org/en/downloads/)
* [Rails](http://rubyonrails.org/)
* ActiveRecord
* [Postgres](https://www.postgresql.org/)
* Bundler
* Faker Gem
* ES6
* [Git](https://git-scm.com/)

### API Endpoints

GET Requests:
* GET localhost:3000/
* GET localhost:3000/creatures
* GET localhost:3000/creatures/1
* GET localhost:3000/creatures/1/comments
* GET localhost:3000/creatures/1/comments/1

GET Special Requests:
* GET localhost:3000/creatures/search?kind=conspirators
* GET localhost:3000/creatures/most_comments
* GET localhost:3000//creatures/random

POST Requests:
* POST localhost:3000/creatures/?name=Yellow Stone&sq_miles=5000&state=Montana&year=1900&fauna=deer
* POST localhost:3000/creatures/1/comments/?name=Hiking&description=Fun

PATCH Request:
* PATCH localhost:3000/creatures/1?name=Updated Name
* PATCH localhost:3000/creatures/1/comments/1?

PUT Request:
* PUT localhost:3000/creatures/1?name=Updated Name
* PUT localhost:3000/creatures/1/comments/1?name=Updated Name

DELETE Request:
* DELETE localhost:3000/creatures/1
* DELETE localhost:3000/creatures/1/comments/1

## Setup/Installation Requirements
1. In your terminal clone and access this project's directory
```
$ git clone https://github.com/callmedw/API-code-review.git
$ cd API-code-review
```
2. ⌘Command T to open a new tab in the terminal and start postgres (leave it running in the background)
```
$ postgres
```
3. Return to your previously opened terminal tab and make sure you have faker installed
```
$ gem install faker
```
4. In the terminal
```
$ bundle install
```
5. Open the project in a text editor of your choice
```
$ atom .
```
6. Prepare the database
```
$ rails db:reset
```
7. Start the server
```
$ rails s
```
8. Navigate to localhost:3000 in a web browser of your choice


## Known Bugs
🐞

## Authors

Dana Weiss

## License

*open source GPL & MIT*

```
Copyright (c) 2017 **Dana Weiss**
```
