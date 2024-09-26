require 'rails_helper'

RSpec.describe "estudiantes/show", type: :view do
  before(:each) do
    assign(:estudiante, Estudiante.create!(
      nombres: "Nombres",
      apellidos: "Apellidos",
      carrera: "Carrera",
      carnet: "Carnet"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nombres/)
    expect(rendered).to match(/Apellidos/)
    expect(rendered).to match(/Carrera/)
    expect(rendered).to match(/Carnet/)
  end
end
