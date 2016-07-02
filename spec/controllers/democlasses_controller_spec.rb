require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe DemoclassesController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # Democlass. As you add validations to Democlass, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # DemoclassesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all democlasses as @democlasses" do
      democlass = Democlass.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:democlasses)).to eq([democlass])
    end
  end

  describe "GET show" do
    it "assigns the requested democlass as @democlass" do
      democlass = Democlass.create! valid_attributes
      get :show, {:id => democlass.to_param}, valid_session
      expect(assigns(:democlass)).to eq(democlass)
    end
  end

  describe "GET new" do
    it "assigns a new democlass as @democlass" do
      get :new, {}, valid_session
      expect(assigns(:democlass)).to be_a_new(Democlass)
    end
  end

  describe "GET edit" do
    it "assigns the requested democlass as @democlass" do
      democlass = Democlass.create! valid_attributes
      get :edit, {:id => democlass.to_param}, valid_session
      expect(assigns(:democlass)).to eq(democlass)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Democlass" do
        expect {
          post :create, {:democlass => valid_attributes}, valid_session
        }.to change(Democlass, :count).by(1)
      end

      it "assigns a newly created democlass as @democlass" do
        post :create, {:democlass => valid_attributes}, valid_session
        expect(assigns(:democlass)).to be_a(Democlass)
        expect(assigns(:democlass)).to be_persisted
      end

      it "redirects to the created democlass" do
        post :create, {:democlass => valid_attributes}, valid_session
        expect(response).to redirect_to(Democlass.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved democlass as @democlass" do
        post :create, {:democlass => invalid_attributes}, valid_session
        expect(assigns(:democlass)).to be_a_new(Democlass)
      end

      it "re-renders the 'new' template" do
        post :create, {:democlass => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested democlass" do
        democlass = Democlass.create! valid_attributes
        put :update, {:id => democlass.to_param, :democlass => new_attributes}, valid_session
        democlass.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested democlass as @democlass" do
        democlass = Democlass.create! valid_attributes
        put :update, {:id => democlass.to_param, :democlass => valid_attributes}, valid_session
        expect(assigns(:democlass)).to eq(democlass)
      end

      it "redirects to the democlass" do
        democlass = Democlass.create! valid_attributes
        put :update, {:id => democlass.to_param, :democlass => valid_attributes}, valid_session
        expect(response).to redirect_to(democlass)
      end
    end

    describe "with invalid params" do
      it "assigns the democlass as @democlass" do
        democlass = Democlass.create! valid_attributes
        put :update, {:id => democlass.to_param, :democlass => invalid_attributes}, valid_session
        expect(assigns(:democlass)).to eq(democlass)
      end

      it "re-renders the 'edit' template" do
        democlass = Democlass.create! valid_attributes
        put :update, {:id => democlass.to_param, :democlass => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested democlass" do
      democlass = Democlass.create! valid_attributes
      expect {
        delete :destroy, {:id => democlass.to_param}, valid_session
      }.to change(Democlass, :count).by(-1)
    end

    it "redirects to the democlasses list" do
      democlass = Democlass.create! valid_attributes
      delete :destroy, {:id => democlass.to_param}, valid_session
      expect(response).to redirect_to(democlasses_url)
    end
  end

end
