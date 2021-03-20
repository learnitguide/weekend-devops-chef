execute 'apache_config_change' do
  command 'sed -i "s/Listen 80/Listen 8080/g" /etc/apache2/ports.conf'
end

cookbook_file '/var/www/html/index.html' do

  source 'index.html'

end
