
cookbook_file '/var/www/html/index.html' do

  source 'index.html'

end


template '/var/www/html/aboutus.html' do

 source 'about_us.erb'
 variables(
    firstname: 'selva',
    lastname: 'kumar'
 )

end
