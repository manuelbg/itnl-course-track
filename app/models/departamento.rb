class Departamento < ActiveRecord::Base
  has_many :maestros
  validates_presence_of :nombre, :message => "- Es un campo obligatorio"
end
