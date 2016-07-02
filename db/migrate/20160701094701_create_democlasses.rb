class CreateDemoclasses < ActiveRecord::Migration
  def change
    create_table :democlasses do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
