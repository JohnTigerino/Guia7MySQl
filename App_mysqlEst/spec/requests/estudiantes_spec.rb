require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/estudiantes", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # Estudiante. As you add validations to Estudiante, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Estudiante.create! valid_attributes
      get estudiantes_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      estudiante = Estudiante.create! valid_attributes
      get estudiante_url(estudiante)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_estudiante_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      estudiante = Estudiante.create! valid_attributes
      get edit_estudiante_url(estudiante)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Estudiante" do
        expect {
          post estudiantes_url, params: { estudiante: valid_attributes }
        }.to change(Estudiante, :count).by(1)
      end

      it "redirects to the created estudiante" do
        post estudiantes_url, params: { estudiante: valid_attributes }
        expect(response).to redirect_to(estudiante_url(Estudiante.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Estudiante" do
        expect {
          post estudiantes_url, params: { estudiante: invalid_attributes }
        }.to change(Estudiante, :count).by(0)
      end

      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post estudiantes_url, params: { estudiante: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested estudiante" do
        estudiante = Estudiante.create! valid_attributes
        patch estudiante_url(estudiante), params: { estudiante: new_attributes }
        estudiante.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the estudiante" do
        estudiante = Estudiante.create! valid_attributes
        patch estudiante_url(estudiante), params: { estudiante: new_attributes }
        estudiante.reload
        expect(response).to redirect_to(estudiante_url(estudiante))
      end
    end

    context "with invalid parameters" do
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        estudiante = Estudiante.create! valid_attributes
        patch estudiante_url(estudiante), params: { estudiante: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested estudiante" do
      estudiante = Estudiante.create! valid_attributes
      expect {
        delete estudiante_url(estudiante)
      }.to change(Estudiante, :count).by(-1)
    end

    it "redirects to the estudiantes list" do
      estudiante = Estudiante.create! valid_attributes
      delete estudiante_url(estudiante)
      expect(response).to redirect_to(estudiantes_url)
    end
  end
end
