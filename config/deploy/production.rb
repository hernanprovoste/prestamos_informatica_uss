set :stage, :production
server '10.180.66.25', user: 'deploy', roles: %w{web app db}
