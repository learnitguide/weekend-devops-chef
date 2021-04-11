file '/tmp/networkinfo' do
  content "
  Info collected by Selva:
  Platform: #{node["platform"]}
  enp0s3: #{node["network"]["interfaces"]["enp0s3"]}
  "
end


file "#{node["logfile"]}" do
  content "test"
 action :create
end

devops = data_bag_item('devops_users_list','prakash')

file "/tmp/#{devops['username']}" do
  content "my username is #{devops['username']}
  my passwd is #{devops['passwd']}
  "
  action :create
end
