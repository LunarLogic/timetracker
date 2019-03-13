[![CircleCI](https://circleci.com/gh/LunarLogic/timetracker.svg?style=svg)](https://circleci.com/gh/LunarLogic/timetracker)

# Timetracker

Timetracker is an application that helps you measure your working time or the time you spend in the office, etc.
The user interface is very simple so that turning the timer on and off is quick and effortless.

## Development

The application is built using [Phoenix Framework](http://www.phoenixframework.org/).

Here are some useful resources:

  * Official Phoenix Framework guides: https://hexdocs.pm/phoenix/overview.html

### Requirements

* Elixir
* Node.js
* PostgreSQL

### :zap: Getting started

#### Instalation

1. Install dependencies listed in the [requirements section](#requirements)

    Sample instruction for macOS:

    ```shell
    brew install node postgres elixir && brew services start postgresql
    ```

2. Clone the repository and change the directory:

    ```shell
    git@github.com:LunarLogic/timetracker.git && cd timetracker
    ```

3. Setup the application and the database

    ```shell
    mix deps.get
    mix ecto.setup
    cd assets && {npm install; cd ..}
    ```

#### Running tests and linters

```shell
# tests
mix test

# formatters
mix format
```

#### Running the app

```shell
mix phx.server
```

Now you can visit http://localhost:4000 from your browser.

#### Update your development environment

If you pulled new changes from the repository and the project isn't working:

```shell
mix deps.get
mix ecto.migrate
cd assets && {npm install; cd ..}
```
