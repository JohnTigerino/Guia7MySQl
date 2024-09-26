require "rails_helper"

RSpec.describe EstudiantesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/estudiantes").to route_to("estudiantes#index")
    end

    it "routes to #new" do
      expect(get: "/estudiantes/new").to route_to("estudiantes#new")
    end

    it "routes to #show" do
      expect(get: "/estudiantes/1").to route_to("estudiantes#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/estudiantes/1/edit").to route_to("estudiantes#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/estudiantes").to route_to("estudiantes#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/estudiantes/1").to route_to("estudiantes#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/estudiantes/1").to route_to("estudiantes#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/estudiantes/1").to route_to("estudiantes#destroy", id: "1")
    end
  end
end
