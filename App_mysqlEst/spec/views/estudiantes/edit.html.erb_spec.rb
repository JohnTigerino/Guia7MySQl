require 'rails_helper'

RSpec.describe "estudiantes/edit", type: :view do
  let(:estudiante) {
    Estudiante.create!(
      nombres: "MyString",
      apellidos: "MyString",
      carrera: "MyString",
      carnet: "MyString"
    )
  }

  before(:each) do
    assign(:estudiante, estudiante)
  end

  it "renders the edit estudiante form" do
    render

    assert_select "form[action=?][method=?]", estudiante_path(estudiante), "post" do

      assert_select "input[name=?]", "estudiante[nombres]"

      assert_select "input[name=?]", "estudiante[apellidos]"

      assert_select "input[name=?]", "estudiante[carrera]"

      assert_select "input[name=?]", "estudiante[carnet]"
    end
  end
end
