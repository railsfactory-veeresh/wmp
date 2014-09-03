class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         has_many :line_items


          def add_product(product_id)
         current_item = line_items.find_by(product_id: product_id)
       if current_item
       current_item.quantity += 1
      else
      current_item = line_items.build(product_id: product_id)
       end
       current_item
      end
end
