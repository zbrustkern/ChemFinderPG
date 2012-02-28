class ChemicalsFgroups < ActiveRecord::Migration
  def change
    create_table :chemicals_fgroups, :id => false do |t|
      t.integer :chemical_id
      t.integer :fgroup_id
    end
  end
end
