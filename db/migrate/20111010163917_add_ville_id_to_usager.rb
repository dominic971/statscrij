class AddVilleIdToUsager < ActiveRecord::Migration
  def self.up
    add_column :usagers, :ville_id, :integer
  end

  def self.down
    remove_column :usagers, :ville_id
  end
end
