# Online class reservation apis

This application is about creating a reservation for an online class with a teacher

## Features

This App has the following features:

- User can create an account
- User can signin
- User can view all available teachers
- User can view a specific teacher informations
- User can reserve an online class with a teacher
- User can view all his/her reservations

## Available APIs

| Ressource URL | Methods  | Description  |
| ------- | --- | --- |
| /api/v1/users| POST | Signup a new user |
| /api/v1/authentications | POST | Sign in a current user|
| /api/v1/teachers/ | GET | Get all available teachers |
| /api/v1/teachers/:teacher_id| GET |Get a specific teacher informations |
| /api/v1/reservations/| POST | Post a new reservation |
| /api/v1/reservations| GET | Get all available reservations |


## Built With

- Ruby v3.0.2
- Rails v6.1.4
- PostgreSQL
- Bcrypt
- JWT

## Live Demo

[Link-here](https://lydia-online-class.herokuapp.com)

## Getting Started

### Prerequisites

To get this project up and running locally, you must already have ruby and necessary gems installed on your computer

To get this project set up on your local machine, follow these simple steps:

1. Open terminal
2. Clone the repository 
``` git@github.com:DeliceLydia/online-class-reservation-apis.git ```
3. Cd in the project ``` online-class-reservation-apis ```
4. Run ``` bundle install ```
5. Create database by running ``` rails db:create ```
6. Install webpacker by running 
``` bundle exec rails webpacker:install ```
7. Run database migration by running ``` rails db:migrate ```
8. Seed the database by running ``` rails db:seed ```
9. Start your server ``` rails server ```
10. Run the app ``` http://localhost:3000/ ```

## Run tests

```
  rspec --format documentation
```

## APIs Documentation

Check out here [Postman](https://documenter.getpostman.com/view/6368898/Tzz8sH4c) Documentation

## Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/DeliceLydia/online-class-reservation-apis/issues).

## Authors

???? **Delice Lydia**
  - GitHub: [Delice Lydia](https://github.com/DeliceLydia)
  - Twitter: [Delice](https://twitter.com/IngabireLydia)
  - LinkedIn: [Delice Lydia](https://www.linkedin.com/in/delice-lydia/)

## Show your support

Give a ?????? if you like this project!

## Acknowledgments

Credits goes to the [**Murat Korkmaz on Behance**](https://www.behance.net/gallery/26425031/Vespa-Responsive-Redesign) for the design inspirations.

# License
???
This project is [MIT](https://github.com/DeliceLydia/online-class-reservation-apis/blob/master/LICENSE) licensed.
