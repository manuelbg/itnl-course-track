class Maestro < ActiveRecord::Base
  belongs_to :departamento
  has_many :periodos
  validates_presence_of :nombre, :clave, :message => "- Es un campo obligatorio"
  validates_numericality_of :clave, :only_integer => true, :message => "- Este campo solo debe contener numeros"
  validates_length_of :clave, :maximum => 6, :message =>"- Debe ser maximo 6 caracteres" 
  validates_uniqueness_of :clave, :on => :create, :message => "ya existe" 
  validates_uniqueness_of :nombre, :on => :create, :message => "ya existe"
end
