require "mysql2"   

@db_host  = "localhost"
@db_user  = "root"
@db_pass  = "veeresh"
@db_name = "db2"

client = Mysql2::Client.new(:host => @db_host, :username => @db_user, :password => @db_pass, :database => @db_name)


 
@cdr_result = client.query("select name from company where name =sedin");

@cdr_result.each do |name|
 puts "#{name}"
end

