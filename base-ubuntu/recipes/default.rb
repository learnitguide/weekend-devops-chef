#
# Cookbook:: base-ubuntu
# Recipe:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.
#


directory '/tmp/dir_with_action' do
  action :create
end

directory '/tmp/dir_wo_action'

file '/tmp/index.html' do
  content '<html>This is a placeholder for the home page.</html>'
end
