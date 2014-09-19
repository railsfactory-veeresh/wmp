class AddNameToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :name, :string
  	add_column :users, :birth_date, :datetime
  	add_column :users, :sex, :string
  	add_column :users, :birth_hour, :time
  
  	add_column :users, :present_city, :string
  	add_column :users, :present_country, :string
  	add_column :users, :birth_city, :string
  	add_column :users, :birth_country, :string
  	add_column :users, :biography, :text
  end
end
