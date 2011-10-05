class CreateUsagers < ActiveRecord::Migration
  def self.up
    create_table :usagers do |t|
      t.string :sexe
      t.string :tranche_age
      t.string :niv_formation
      t.string :situation
      t.string :ville
      t.string :domaine
      t.string :service

      t.timestamps
    end
  end

  def self.down
    drop_table :usagers
  end
end
