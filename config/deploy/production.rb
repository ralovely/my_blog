set :stage, :production

role :all, %w{ubuntu@ec2-54-206-46-63.ap-southeast-2.compute.amazonaws.com}

 set :ssh_options, {
   keys: %w(/Users/raphael/.ssh/aws),
   forward_agent: true,
   auth_methods: %w(publickey),
 }
