require 'rails_helper'

RSpec.describe "prices/show", :type => :view do
  before(:each) do
    @price = assign(:price, Price.create!(
      :name => "Name",
      :password => "Password",
      :image => "Image"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Password/)
    expect(rendered).to match(/Image/)
  end
end
