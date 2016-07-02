class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :manager
      t.string :status
      t.string :price

      t.timestamps
    end
  end
end
