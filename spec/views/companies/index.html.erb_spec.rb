require 'rails_helper'

RSpec.describe "companies/index", :type => :view do
  before(:each) do
    assign(:companies, [
      Company.create!(
        :name => "Name",
        :manager => "Manager",
        :status => "Status",
        :price => "Price"
      ),
      Company.create!(
        :name => "Name",
        :manager => "Manager",
        :status => "Status",
        :price => "Price"
      )
    ])
  end

  it "renders a list of companies" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Manager".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "Price".to_s, :count => 2
  end
end
