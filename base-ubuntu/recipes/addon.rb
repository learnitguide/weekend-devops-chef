if node['platform_version'] == '18.04'

file '/tmp/networkinfo' do
  content "
  Info collected by Selva:
  Platform: #{node["platform"]}
  enp0s3: #{node["network"]["interfaces"]["enp0s3"]}
  "
end

else

file '/tmp/otherinfo' do
  content "
  Info collected by Selva:
  Platform: #{node["platform"]}
  enp0s3: #{node["network"]["interfaces"]["enp0s3"]}
  "
end


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

['git','ansible','net-tools'].each do |pkg_name|

        package pkg_name do

                action :install
        end

end


