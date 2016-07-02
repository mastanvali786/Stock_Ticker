ActiveAdmin.register Product do
  menu :priority => 2
  permit_params :title, :description,:author,:price, :featured, :available_on,:image_file_name

  # active_admin_importable

  active_admin_import :validate => true,
            :template_object => ActiveAdminImport::Model.new(
                :hint => "File Will Be Import: CSV Format",
                :csv_headers => ["title","description","author","price","featured","available_on","image_file_name"] 
            )

 # active_admin_import :validate => false,
 #                          :template => 'import' ,
 #                          :template_object => ActiveAdminImport::Model.new(
 #                              :hint => "specify CSV options"
 #                              :csv_options => {:col_sep => ";", :row_sep => nil, :quote_char => nil} 
 #                          )
#   csv do
#   column :title
#   column :description
#   column :author
#   column :price
#   column :featured
#   column :available_on
#   column :image_file_name
# end

# csv do
#     column :title
#     column(:author) { |product| product.author.full_name }
#   end
  
  scope :all, :default => true
  scope :available do |products|
    products.where("available_on < ?", Date.today)
  end
  scope :drafts do |products|
    products.where("available_on > ?", Date.today)
  end
  scope :featured_products do |products|
    products.where(:featured => true)
  end

  index :as => :grid do |product|
    div do
      a :href => admin_product_path(product) do
        image_tag("products/" + product.image_file_name)
      end
    end
    a truncate(product.title), :href => admin_product_path(product)
  end

  show :title => :title

  sidebar :product_stats, :only => :show do
    attributes_table_for resource do
      row("Total Sold")  { Order.find_with_product(resource).count }
      row("Dollar Value"){ number_to_currency LineItem.where(:product_id => resource.id).sum(:price) }
    end
  end

  sidebar :recent_orders, :only => :show do
    Order.find_with_product(resource).limit(5).collect do |order|
      auto_link(order)
    end.join(content_tag("br")).html_safe
  end

  # sidebar "Active Admin Demo" do
  #   render('/admin/sidebar_links', :model => 'products')
  # end
  index as: :grid do |product|
  link_to image_tag(product.image_path), admin_product_path(product)
end

# csv do
#     column :title
#     column(:author) { |product| product.author.full_name }
#   end

#    csv force_quotes: true, col_sep: ';', column_names: false do
#     column :title
#     column(:author) { |product| product.author.full_name }
#   end

 collection_action :import_csv
    # Do some CSV importing work here...
    

end
