require 'rails_helper'

RSpec.describe "companies/show", :type => :view do
  before(:each) do
    @company = assign(:company, Company.create!(
      :name => "Name",
      :manager => "Manager",
      :status => "Status",
      :price => "Price"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Manager/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(/Price/)
  end
end
