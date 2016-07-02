require 'rails_helper'

RSpec.describe "democlasses/new", :type => :view do
  before(:each) do
    assign(:democlass, Democlass.new(
      :name => "MyString",
      :email => "MyString"
    ))
  end

  it "renders new democlass form" do
    render

    assert_select "form[action=?][method=?]", democlasses_path, "post" do

      assert_select "input#democlass_name[name=?]", "democlass[name]"

      assert_select "input#democlass_email[name=?]", "democlass[email]"
    end
  end
end
