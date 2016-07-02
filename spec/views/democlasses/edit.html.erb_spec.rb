require 'rails_helper'

RSpec.describe "democlasses/edit", :type => :view do
  before(:each) do
    @democlass = assign(:democlass, Democlass.create!(
      :name => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit democlass form" do
    render

    assert_select "form[action=?][method=?]", democlass_path(@democlass), "post" do

      assert_select "input#democlass_name[name=?]", "democlass[name]"

      assert_select "input#democlass_email[name=?]", "democlass[email]"
    end
  end
end
