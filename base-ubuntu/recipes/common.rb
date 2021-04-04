# user add devopsadmin
# sudo access
# /etc/hosts
# /etc/resolv.conf
# install nagios agent
#
#


user 'devopsadmin' do
  uid 1100
  home '/home/devopsadmin'
  manage_home true
  shell '/bin/bash'
  password '$1$8Un2LcxT$zVNAajtlSyEAY/3j5kW8u1'
end

sudo 'devopssudo' do
  user 'devopsadmin'
  nopasswd true
end

cookbook_file '/etc/hosts' do
  source 'hosts'
  owner 'root'
  group 'root'
end

package 'nagios-nrpe-server'
package 'nagios-plugins'


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


