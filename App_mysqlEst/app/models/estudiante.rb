class Estudiante < ApplicationRecord
  validates_presence_of :nombres, presence: true
  validates_format_of :nombres, :with => /\A[a-zA-Z]+\z/

  validates_presence_of :apellidos, presence: true
  validates_format_of :apellidos, :with => /\A[a-zA-Z]+\z/

  validates_presence_of :carrera, presence: true
  validates_format_of :carrera, :with => /\A[a-zA-Z]+\z/

  validates_presence_of :carnet, presence: true # uniqueness: true
end
