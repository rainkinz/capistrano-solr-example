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

