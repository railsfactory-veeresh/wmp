require "mysql2" 
require 'rubygems'
require 'bundler/setup'
require 'sinatra'
  

@db_host  = "localhost"
@db_user  = "root"
@db_pass  = "veeresh"
@db_name = "metabase"
@v=[]
@s=[]

client = Mysql2::Client.new(:host => @db_host, :username => @db_user, :password => @db_pass, :database => @db_name)

configure do
  set :views, "#{File.dirname(__FILE__)}/views"
end
enable :sessions
set :session_secret, 'randomesecretkey112324'


# root page
get '/' do
  
  erb :index
end  

get '/database' do
 
erb :base
end 

get '/show_database' do
 
@v=client.query("show databases");

erb :show
end


get '/show_tables' do

dname=params["item"]

@db_host  = "localhost"
@db_user  = "root"
@db_pass  = "veeresh"

n1 = Mysql2::Client.new(:host => @db_host, :username => @db_user, :password => @db_pass, :database => dname)
@s=n1.query("show tables");
erb :tables
end
