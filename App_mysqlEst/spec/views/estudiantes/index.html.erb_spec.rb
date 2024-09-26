require 'rails_helper'

RSpec.describe "estudiantes/index", type: :view do
  before(:each) do
    assign(:estudiantes, [
      Estudiante.create!(
        nombres: "Nombres",
        apellidos: "Apellidos",
        carrera: "Carrera",
        carnet: "Carnet"
      ),
      Estudiante.create!(
        nombres: "Nombres",
        apellidos: "Apellidos",
        carrera: "Carrera",
        carnet: "Carnet"
      )
    ])
  end

  it "renders a list of estudiantes" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Nombres".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Apellidos".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Carrera".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Carnet".to_s), count: 2
  end
end
