# Example `capistrano-solr` deployment

This project is simply an example project demonstrating the usage of
`https://github.com/rainkinz/capistrano-solr`. Vagrant is used to test the
deployment.

## Getting Started

### Get the code

Clone this repository and bundle install the required gems:

```sh
$ git clone XXXXXXXXXXXXXXXXXXXXXX
$ cd capistrano-solr-example
$ bundle install
```
### Configure the environment you want to deploy to

TODO: Fill out this section

TODO: Take a look at `config/deploy.rb`. Anything needed in there?

## Running with Vagrant

### Install VirtualBox

See [https://www.virtualbox.org/wiki/Downloads](https://www.virtualbox.org/wiki/Downloads)
for downloads and install information for VirtualBox.

If you're using OSX with homebrew and cask you can probably do something like
this:

```sh
$ brew cask install virtualbox
```

### Install Vagrant

See [https://www.vagrantup.com/](https://www.vagrantup.com/) for specific
information on how to install vagrant.

If you're using OSX with homebrew and cask you can probably do something like
this:

```sh
$ brew cask install vagrant
```

## Configure `config/deploy/<env_name>.rb` as needed

As an example look at the Vagrant deploy in `config/deploy/vagrant.rb` which
looks like:

```ruby
# Configures a local Vagrant Instance with Solr
#
set :user, 'vagrant'

server "172.28.128.3", user: fetch(:user), roles: %w{solr zookeeper},
  ssh_options: {
    # user: 'vagrant', # overrides user setting above
    # keys: %w(/home/user_name/.ssh/id_rsa),
    forward_agent: false,
    auth_methods: %w(publickey password),
    password: 'vagrant'
  }
```

## Run

Start up the supplied Vagrant box:

```sh
$ vagrant up
```

Deploy solr:

```
$ be cap vagrant solr:install
```

Navigate to [http://localhost:8983/solr](http://localhost:8983/solr) and you
should see solrcloud running.

