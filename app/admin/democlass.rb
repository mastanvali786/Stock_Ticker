ActiveAdmin.register Democlass do


active_admin_importable

 menu :parent => "Project Module"

  permit_params :id , :name, :email
   config.batch_actions = false
  filter :name_cont, label: 'Name'
  actions :all, :except => [:destroy]

  index :download_links => true do
    column :name
    column :email
   actions name: "Actions"
  end

  # show do
  #   attributes_table :name
  #   attributes_table :email
  # end

  form do |f|
    f.inputs "Topics for Non Compliance" do
      f.input :name
      f.input :email
    end
    f.actions
  end


# index do
#   column :name
#   column :email
# end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end
