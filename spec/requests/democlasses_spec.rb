require 'rails_helper'

RSpec.describe "Democlasses", :type => :request do
  describe "GET /democlasses" do
    it "works! (now write some real specs)" do
      get democlasses_path
      expect(response.status).to be(200)
    end
  end
end
