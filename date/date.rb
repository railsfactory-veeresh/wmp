require 'sinatra'
require './roman.rb'
require './numbers.rb'
get '/date' do
 day = params['day']
 month = params['month']
 year = params['year']
 page =  File.read('./date.html')
 year1= Roman.convert(year)
 num= Numbers.convert(day)
 page = page + num + month.to_s + year1
 end




