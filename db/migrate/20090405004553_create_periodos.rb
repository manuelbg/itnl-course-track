class CreatePeriodos < ActiveRecord::Migration
  def self.up
    create_table :periodos do |t|
      t.integer :maestro_id
      t.integer :numero
      t.integer :anio

      t.timestamps
    end
  end

  def self.down
    drop_table :periodos
  end
end
