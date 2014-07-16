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



if day.to_i != 0 && month.to_i !=0 && year.to_i !=0
     f = Time.new(year, month, day)
      a = f.strftime('%A')
   end





 page = page + "<h3>" + day1.to_s + ("\s") + month.to_s  + ("\s") + year1.to_s + ("\n") + "<h3>"
 page = page + num.to_s + ("\s") + month.to_s  + ("\s") + year1
   page= page + "<h3>" + a.to_s

 end




