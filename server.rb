require 'sinatra'
require 'pry'
require 'csv'

set :public_folder, File.dirname(__FILE__) + '/public'
set :views, File.dirname(__FILE__) + '/views'

league = {}
id = 0

CSV.foreach("public/data.csv", headers: true) do |row|
  league["player_#{id}".to_sym] = {
    first_name: row[0],
    last_name: row[1],
    position: row[2],
    team: row[3]
  }
  id += 1
end

get '/' do
  html = '''
  <!DOCTYPE html>
  <html lang="en">
    <head>
      <title>LACKP League of Cool Kickball Professionals</title>
      <link rel="stylesheet" href="home.css" />
    </head>
    <body>
    <h1>League of Cool Kickball Professionals</h1>
    <p>Placeholder</p>
    </body>
  '''
end

get '/:team' do
  erb :team
end
