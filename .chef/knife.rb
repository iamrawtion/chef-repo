# See http://docs.opscode.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "roshan4074"
client_key               "#{current_dir}/roshan4074.pem"
validation_client_name   "roshan4074-validator"
validation_key           "#{current_dir}/roshan4074-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/roshan4074"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
knife[:editor]="vim"
