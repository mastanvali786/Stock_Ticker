require 'rails_helper'

RSpec.describe "prices/new", :type => :view do
  before(:each) do
    assign(:price, Price.new(
      :name => "MyString",
      :password => "MyString",
      :image => "MyString"
    ))
  end

  it "renders new price form" do
    render

    assert_select "form[action=?][method=?]", prices_path, "post" do

      assert_select "input#price_name[name=?]", "price[name]"

      assert_select "input#price_password[name=?]", "price[password]"

      assert_select "input#price_image[name=?]", "price[image]"
    end
  end
end
