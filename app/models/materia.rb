class Materia < ActiveRecord::Base
  validates_presence_of :nombre, :folio, :message => "- Es un campo obligatorio"
  validates_numericality_of :folio, :only_integer => true, :message => "- Este campo solo debe contener numeros"
  validates_length_of :folio, :maximum => 6, :message =>"- Debe ser maximo 6 caracteres" 
  validates_uniqueness_of :folio, :on => :create, :message => "ya existe" 
end
