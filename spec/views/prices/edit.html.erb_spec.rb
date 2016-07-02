require 'rails_helper'

RSpec.describe "prices/edit", :type => :view do
  before(:each) do
    @price = assign(:price, Price.create!(
      :name => "MyString",
      :password => "MyString",
      :image => "MyString"
    ))
  end

  it "renders the edit price form" do
    render

    assert_select "form[action=?][method=?]", price_path(@price), "post" do

      assert_select "input#price_name[name=?]", "price[name]"

      assert_select "input#price_password[name=?]", "price[password]"

      assert_select "input#price_image[name=?]", "price[image]"
    end
  end
end
