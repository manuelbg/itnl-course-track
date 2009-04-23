class CreateMaestros < ActiveRecord::Migration
  def self.up
    create_table :maestros do |t|
      t.integer :clave
      t.string :titulo
      t.string :nombre

      t.timestamps
    end
  end

  def self.down
    drop_table :maestros
  end
end
