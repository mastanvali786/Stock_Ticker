require 'rails_helper'

RSpec.describe "democlasses/index", :type => :view do
  before(:each) do
    assign(:democlasses, [
      Democlass.create!(
        :name => "Name",
        :email => "Email"
      ),
      Democlass.create!(
        :name => "Name",
        :email => "Email"
      )
    ])
  end

  it "renders a list of democlasses" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
