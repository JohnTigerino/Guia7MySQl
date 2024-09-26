require 'rails_helper'

RSpec.describe "estudiantes/new", type: :view do
  before(:each) do
    assign(:estudiante, Estudiante.new(
      nombres: "MyString",
      apellidos: "MyString",
      carrera: "MyString",
      carnet: "MyString"
    ))
  end

  it "renders new estudiante form" do
    render

    assert_select "form[action=?][method=?]", estudiantes_path, "post" do

      assert_select "input[name=?]", "estudiante[nombres]"

      assert_select "input[name=?]", "estudiante[apellidos]"

      assert_select "input[name=?]", "estudiante[carrera]"

      assert_select "input[name=?]", "estudiante[carnet]"
    end
  end
end
