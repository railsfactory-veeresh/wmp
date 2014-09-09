ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    #div class: "blank_slate_container", id: "dashboard_default_message" do
     # span class: "blank_slate" do
      #  span I18n.t("active_admin.dashboard_welcome.welcome")
        #small I18n.t("active_admin.dashboard_welcome.call_to_action")
      #end
    #end
  h3 section "This Month Orders" do h3
     table_for LineItem.order("updated_at desc").limit(30) do
         
         column :order
         column :product
          column :created_at do |obj|
    obj.created_at.localtime.strftime("%b %d")
  end
        
         
        end
 end




h3 section "Recent Products" do h3
    table_for Product.order("created_at desc").limit(5) do
      column :title
      column :created_at do |obj|
    obj.created_at.localtime.strftime("%b %d")
  end
      column "photo" do |product|
       image_tag product.photo, class: 'my_image_size'
     end
    end
end
 h3 section "Recent Users" do h3
table_for User.order("created_at desc").limit(5) do
      column :email
      column :created_at do |obj|
    obj.created_at.localtime.strftime("%b %d")
  end
    end
    strong { link_to "View All Products", admin_products_path }
  end












    # Here is an example of a simple dashboard with columns and panels.
    
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end