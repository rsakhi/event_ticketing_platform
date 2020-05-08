# README

## Usage

### Install Ruby
Application requires `ruby` version `2.4.1`:
```bash
$ rvm install 2.4.1
$ rvm use 2.4.1 --default
```

`rvm` is a ruby version management tool which allows installation of multiple versions of ruby. Please see official documentation for instructions on how to install rvm.

### Install Rails
Application requires rails version `5.2.4`:

$ gem install `rails` -v `5.2.4`

### UI
`Html, css, flexbox`


### Gems
As a standard `rails` application `bundler` is used for management of dependencies. To install dependencies:

```bash
$ bundle update
$ bundle install
```

Above commands should be run from root directory of the application.

### setup DB, apply migrations
```bash
$ rake db:migrate
$ rake db:seed
```

### Default user
```bash
email: admin@gmail.com
password: admin@123
role: Admin
Gender: Male
```

---------------------------------------------


## Application flow and features
`Roles: Admin, User`

### Admin
```bash
Can create and delete Event,
View Event details such as number of Guest and Guest list
```

### User: 
```bash
View Event List, 
Accept/Reject active events
View Event details such as number of Guest and Guest list (name and gender)
```

### Pricing 
`Based on Gender`

---------------

