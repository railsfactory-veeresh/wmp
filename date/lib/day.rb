class Which_day
 def days(day,month,year)
         day = day.to_i
         month = month.to_i
         year = year.to_i
      
        da1 = day % 7
        mon = month *30
        mon1 = mon % 7
        yea1 = year % 400
        l = da1+mon1+yea1 
        l = l % 7
    hash = { 1=>'monday',2=>'tuesday',3=>'wednesday',4=>'thrusday',5=>'friday',5=>'saturday',0=>'sunday'}
     return hash[l]
 end

end

 
