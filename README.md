# FS Chat

## Project description

Enjoy the simple way of communication.
Communication between Web & iOS app has never been easier!

Go for it:
https://fs-chat.herokuapp.com

## Quick Start

```bash
# clone repo
git clone git@github.com:IlkhamGaysin/chat.git
cd repo

# run setup script
bin/setup

# configure ENV variables in .env
vim .env

# run server on 5000 port
bin/server
```

## Scripts

* `bin/setup` - setup required gems and migrate db if needed
* `bin/quality` - run brakeman
* `bin/ci` - should be used in the CI to run specs
