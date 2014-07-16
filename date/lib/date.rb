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

v=a.to_s
if v == "Monday"
v="somavara"
elsif v== "Tuesday"
v="mangalvara"
elsif v=="Wednesday"
v="budhvara"
elsif v=="Thursday"
v="guruvara"
elsif v=="Friday"
v="shukravara"
elsif v=="Saturday" 
v="shanivara"
elsif v == "Sunday"
v="ravivara"
end


 page = page + "<h3>" + 'date in Roman =>' + day1.to_s + ("\s") + month.to_s  + ("\s") + year1.to_s + ("\n") + "<h3>" + ("\n")
 page = page + 'date in number=>' + num.to_s + ("\s") + month.to_s  + ("\s") + year1 + ("\n") + "<h3>"
 page= page + 'the day is =>' + ("\s") +   a.to_s + ("\n") + "<h3>"
 page= page + 'name of day in kannada =>' + ("\s") +  v.to_s 
 end




