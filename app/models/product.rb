class Product < ActiveRecord::Base

  # Named Scopes
  scope :available, lambda{ where("available_on < ?", Date.today) }
  scope :drafts, lambda{ where("available_on > ?", Date.today) }

  # Validations
  # validates_presence_of :title
  # validates_presence_of :price
  # validates_presence_of :image_file_name
  validates_presence_of :file

# def to_s
#   "#{title} #{description} #{author} #{price} #{featured} #{available_on} #{image_file_name}"
#   end

# def as_csv
#     attributes
#   end

  
end
