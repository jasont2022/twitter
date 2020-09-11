<!-- Project Shields -->
<!--
*** Using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
-->
[![Contributors][contributors-shield]][contributors-url]
[![Watchers][watchers-shield]][watchers-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
![README Checker](https://github.com/jasont2022/twitter/workflows/README%20URL%20Checker/badge.svg)
[![Apache License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]

<!-- PROJECT LOGO -->
<br />
<p align="center">
  <h3 align="center">MiniTwitter</h3>
  <p align="center">
    A mini version of Twitter implemented in Ruby & Rails
    <br />
    <a href="https://github.com/jasont2022/twitter"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://cis196-jason-twitter.herokuapp.com/">View Web App</a>
    ·
    <a href="https://github.com/jasont2022/twitter/issues">Report Bug</a>
    ·
    <a href="https://github.com/jasont2022/twitter/issues">Request Feature</a>
  </p>
</p>

## Table of Contents
* [About](#about)
* [Technologies](#technologies)
* [Features](#features)
* [Schema](#schema)
* [Concepts](#concepts)
* [Getting Started](#getting-started)
  * [Prerequisites](#prerequisites)
  * [Website](#website)
* [Demo](#demo)
* [Links](#links)
* [License](#license)

## About
**MiniTwitter** is a simple mini-mock up version of Twitter! The web application is implemented in the Ruby programming language and Rails framework. This full stack web application will have the core features from Twitter such as followship, user account management, and tweets. Below has the full technologies and features for this project listed in detail.

## Technologies
This project is created with the following:
* HTML
* CSS
* Ruby
* Rails 6.0.3
* [Bootstrap](https://getbootstrap.com/)
* [Devise](https://github.com/heartcombo/devise)
* [Active Storage](https://github.com/rails/rails/tree/master/activestorage)
* [Gaurd](https://rubygems.org/gems/guard) 
* [Guard LiveReload](https://rubygems.org/gems/guard-livereload)
* Amazon S3
* [Heroku](https://www.heroku.com/home)

## Features
This project has the following features:
* Account Session Management
* Home Feed Page
* Create / Read / Delete Tweets
* User Profile Pictures via Active Storage
* Search / Follow / Unfollow Users
* Create / Read / Update / Delete Profile
* Create / Update / Reset Password

## Schema
Below is a basic schema table for this project, check out `schema.rb` for a detailed schema
#### User
| Property      | Type     | Description |
| ------------- | -------- | ------------|
| email         | String   | Required for user sign in |
| password      | String   | Hidden - Required for sign in |
| username      | String   | A unique user name |
| name          | String   | the name of the user |
| profileImage  | File     | User can upload a profile picture |
#### Tweets
| Property      | Type     | Description |
| ------------- | -------- | ------------|
| tweet         | Text     | The text body of the tweet |
| created_at    | Datetime | The time at which the tweet was created |
#### Followships
| Property      | Type     | Description |
| ------------- | -------- | ------------|
| follower_id   | Bigint   | The unqiue of the follower |
| following_id  | Bigint   | The unqiue of the following |

* Users have many Tweets (one-to-many association)
* Followship (self-referring many-to-many association)

## Concepts
This project covers the following Ruby, Rails, and web developement concepts listed below:

* many to many 
* one to many
* nested resources
* account session management
* active storage
* third party ruby gems
* HTML & CSS
* CSS frameworks

## Getting Started
Here are the following steps below to get started with the website:

### Prerequisites
Must have a **working email address** it will be used to create an account & for password recovery

### Website
1. Click on the link http://cis196-jason-twitter.herokuapp.com
2. Once the website is loaded, click the link `Sign Up for Twitter` or `Sign Up` button
3. Enter the following fields, you may leave `Avatar` field blank, a default profile picture will be given
4. Click `Sign Up` below the avatar field to create the account
5. You will be redirected to the `Login` page
6. Once you `Login` your feed page will be empty
7. Click `People` to find users and follow them
8. You can view your profile by clicking `Profile` or your avatar picture

View the [demo](#demo) below to get started and see the full features

## Demo
<p align="center">
<a href="#">
    <img src=""
    height="750" width="400"></a>
</p>

<p align="center">
Click on image to open Demo
</p>

## Links
Here is a list of useful links related to the project:
* Project website: http://cis196-jason-twitter.herokuapp.com
* Repository: http://github.com/jasont2022/twitter
* Issue tracker: http://github.com/jasont2022/twitter/issues
  * In case of sensitive bugs like security vulnerabilities, please contact jasontran2022@gmail.com directly instead of using issue tracker. We value your effort to improve the security and privacy of this project!
* Check out [technologies](#technologies) section for a list of amazing gems & technologies used in this project

## License
This repository is released under the [Apache 2.0 License][license-url]. 

```license
Copyright 2020 Jason Tran

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```

See `LICENSE.md` or the [Apache website](http://www.apache.org/licenses/LICENSE-2.0) for more information.

<!-- Links -->
[contributors-shield]: https://img.shields.io/github/contributors/jasont2022/twitter.svg?color=brightgreen&style=flat-square
[contributors-url]: https://github.com/jasont2022/twitter/graphs/contributors
[watchers-shield]: https://img.shields.io/github/watchers/jasont2022/twitter?style=flat-square
[watchers-url]: https://github.com/jasont2022/twitter/watchers
[forks-shield]: https://img.shields.io/github/forks/jasont2022/twitter.svg?style=flat-square
[forks-url]: https://github.com/jasont2022/twitter/network/members
[stars-shield]: https://img.shields.io/github/stars/jasont2022/twitter.svg?style=flat-square
[stars-url]: https://github.com/jasont2022/twitter/stargazers
[issues-shield]: https://img.shields.io/github/issues/jasont2022/twitter?color=success&style=flat-square
[issues-url]: https://github.com/jasont2022/twitter/issues
[license-shield]: https://img.shields.io/github/license/jasont2022/twitter?style=flat-square
[license-url]: https://github.com/jasont2022/twitter/blob/master/LICENSE.md
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=flat-square&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/jasontran2022
