class AddDepartamentoIdToMaestro < ActiveRecord::Migration
  def self.up
    add_column :maestros, :departamento_id, :integer
  end

  def self.down
    remove_column :maestros, :departamento_id
  end
end
