# FlatNote

## Description
Flatnote is an app that lets users create and maintain a list of notes. After creating a note, users can edit, add tags, and delete. Notes can be filtered by tags.

This was built as part of the Flatiron School Software Engineering Immersive Bootcamp.

## Functionality
- RESTful API with Postgres database
- Customized JSON output with ActiveModel Serializers
- Full CRUD functionality for Note model

## Technologies
- Ruby on Rails
- Rack-CORS manages cross-origin resource Sharing
- RSpec testing for Models and Requests


## Local Installation
Clone this repo and navigate to it's directory
Run:
```
bundle install

rails db:create
rails db:migrate
rails s
```

Clone [front-end app](https://github.com/slaloggia/flatnote-sl-client) and follow README instructions to install

## Testing 
Run all tests with
```
rspec
```

Run only the tests you want by specifying the directory & file name

example:
```
rspec spec/requests/get_notes_spec.rb
```

## Issues
Please feel free to submit an issue with any problems you encounter with the application or suggestions for improvement
