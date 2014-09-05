require "mysql2"   

@db_host  = "localhost"
@db_user  = "root"
@db_pass  = "veeresh"
@db_name = "student"

client = Mysql2::Client.new(:host => @db_host, :username => @db_user, :password => @db_pass, :database => @db_name)
client.query("INSERT INTO marks VALUES(2,'sagar',23)")

@cdr_result = client.query("SELECT * from marks");

@cdr_result.each do |marks|
 puts "#{marks}"
end


