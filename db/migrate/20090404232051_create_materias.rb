class CreateMaterias < ActiveRecord::Migration
  def self.up
    create_table :materias do |t|
      t.integer :folio
      t.string :nombre

      t.timestamps
    end
  end

  def self.down
    drop_table :materias
  end
end
