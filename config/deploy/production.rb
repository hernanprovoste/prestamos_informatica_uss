set :stage, :production
server '10.100.100.86', user: 'operavaldi', roles: %w{web app db}
