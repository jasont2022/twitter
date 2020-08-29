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

# Project Status
**Currently working on README, Contributing, almost finished**

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
* [Getting Started](#getting-started)
  * [Prerequisites](#prerequisites)
  * [Website](#website)
  * [Code](#code)
* [Links](#links)
* [License](#license)

## About
**MiniTwitter** is a simple mini-mock up version of Twitter! The web application is implemented in the Ruby programming language and Rails framework. Below has the following technologies and core features for this project.

## Technologies
This project is created with the following:
* HTML
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

## Getting Started
Here are the following steps below to get started with the website and code:
### Prerequisites
For the code, must have the lastest Ruby and Rails version installed
</br>
For the website, have a working email address it will be used to create an account & for password recovery
### Website
1. Click on the link http://cis196-jason-twitter.herokuapp.com
2. You should see the following menu once the website is loaded:
3. Once the website is loaded, click the link `Sign Up for Twitter`

### Code
1.
2.
3.

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
