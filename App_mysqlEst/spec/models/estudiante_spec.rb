require 'rails_helper'

RSpec.describe Estudiante, type: :model do
  # Crear un estudiante válido para usar en las pruebas
  subject {
    Estudiante.new(
      nombres: "Esteban",
      apellidos: "Parrales",
      carrera: "Telematica",
      carnet: "1234567890"
    )
  }

  context "nombres" do
    it { should validate_presence_of :nombres }
    it { should_not allow_value("123123").for(:nombres) }
    it { should allow_value("abcd").for(:nombres) }
  end

  context "apellidos" do
    it { should validate_presence_of :apellidos }
    it { should_not allow_value("123123").for(:apellidos) }
    it { should allow_value("abcd").for(:apellidos) }
  end

  context "carrera" do
    it { should validate_presence_of :carrera }
    it { should_not allow_value("123123").for(:carrera) }
    it { should allow_value("abcd").for(:carrera) }
  end

  context "carnet" do
    it { should validate_presence_of :carnet }
    #it { should validate_uniqueness_of(:carnet).case_insensitive }
    #it { should validate_length_of(:carnet).is_equal_to(10) }
  end
end
