require "mysql2"   

@db_host  = "localhost"
@db_user  = "root"
@db_pass  = "veeresh"
@db_name = "student"

client = Mysql2::Client.new(:host => @db_host, :username => @db_user, :password => @db_pass, :database => @db_name)
client.query("INSERT INTO student VALUES('vinod','bidar',23)")

@cdr_result = client.query("SELECT * from student");

@cdr_result.each do |name|
 puts "#{name}"
end


