class AddFechaIngresoToMaestro < ActiveRecord::Migration
  def self.up
    add_column :maestros, :fecha_ingreso, :date
    add_column :maestros, :estatus, :boolean
  end

  def self.down
    remove_column :maestros, :estatus
    remove_column :maestros, :fecha_ingreso
  end
end
