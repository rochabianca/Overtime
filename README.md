# Overtime App

#### Objetives
- Company needs documentation that salaried employees did or didn't get overtime each week.

#### Models
> Post
> Date
> Rationale
> User -> Devise
> Admin User -> STI

#### Features
- Aprovad workflow
- SMS Messages -> link to log time
- Admin Dashboard
- Email Summary to Admin Users for approval
- Documentation for no overtime
- 
#### Gems
- Devise
- Administrate
- Twilio
- Dotenv
- Rspec
- Capybara

## How to run this app
- Clone the app
- Set up the .env file, like the .env_example

```sh
  rake db:setup
```

```sh
  rake db:migrate
```