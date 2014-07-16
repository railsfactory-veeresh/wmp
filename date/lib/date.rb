require 'sinatra'
require './roman.rb'
require './numbers.rb'
get '/date' do
 day = params['day']
 month = params['month']
 year = params['year']
 page =  File.read('./date.html')
 year1= Roman.convert(year)
 day1=Roman.convert(day)
 num= Numbers.convert(day)
 num1=Numbers.convert(year)

 page = page + "<h3>" + day1 + ("\s") + month.to_s  + ("\s") + year1 + ("\n") + "<h3>"
 page = page + num + ("\s") + month.to_s  + ("\s") + year1


 end




