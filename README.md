# Online class reservation apis

This application(backend) facilitates the process of making reservations for online classes with teachers.

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

- Ruby
- Rails
- PostgreSQL
- Bcrypt
- JWT

## Live Demo

[Link-here](https://online-class-reservation-apis.onrender.com)

## Getting Started

To get this project set up on your local machine, follow these simple steps:

1. Open terminal
2. Clone the repository 
``` git@github.com:DeliceLydia/online-class-reservation-apis.git ```
3. Cd in the project ``` online-class-reservation-apis ```
4. Run ``` bundle install ```
5. Create database by running ``` rails db:reset ```
6. Seed the database by running ``` rails db:seed ```
7. Start your server ``` rails server ```
8. Run the app ``` http://localhost:3000/ ```


# License
​
This project is [MIT](https://github.com/DeliceLydia/online-class-reservation-apis/blob/master/LICENSE) licensed.
