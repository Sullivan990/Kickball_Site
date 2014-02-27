require 'sinatra'
require 'smarter_csv'

set :public_folder, File.dirname(__FILE__) + '/public'
league = SmarterCSV.process('/Users/charliemsullivan/School/kickball_site/public/data.csv')

get '/' do
  html = '''
  <!DOCTYPE html>
  <html lang="en">
    <head>
      <title>LACKP League of Cool Kickball Professionals</title>
      <link rel="stylesheet" href="home.css" />
    </head>
  '''
end

get '/slammers' do
  "<p>This is the fuckin roster</p>
  <p>#{league}</p>"
end

get '/jets' do
  "Jetson Jets"
end

get '/fire' do
  "Flintstone Fire"
end

get '/goats' do
  "Griphon Goats"
end
