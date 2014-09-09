ActiveAdmin.register Product do
config.batch_actions = false
  
permit_params :list, :of, :attributes, :on, :model, :title, :description, :photo, :price

 index do
    selectable_column
    id_column
    column :title
    column :description
    column :photo
    column :price
    actions
  end
  form :html => { :enctype => "multipart/form-data" } do |f| 
    f.inputs "Product", :multipart => true do 
      f.input :title 
      f.input :description 
      f.input :photo
      f.input :price 
   end 
    f.actions
  end
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end