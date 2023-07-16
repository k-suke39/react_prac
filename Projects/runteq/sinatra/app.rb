require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'

helpers do
  def link_to(text, url)
    "<a href=#{url}>#{text}</a>"
  end
end

get '/' do
    "hello world!"
end

get '/html-completed-erb' do
    erb :html_completed
end

get '/link-to' do
    erb :link_to
end


get '/layout-confirm' do
    erb :layout_confirm
end

get '/users' do
    db = SQLite3::Database.new 'sample.db'
    res = db.execute('SELECT * FROM users;')

    @user_hash = res.map do |row|
        {id: row[0], name: row[1]}
    end

    erb :'users/index'
end


get '/users/new' do
    db = SQLite3::Database.new 'sample.db'
    res = db.execute('SELECT * FROM users;')

    @user_hash = res.map do |row|
        {id: row[0], name: row[1]}
    end

    erb :'users/new'
end