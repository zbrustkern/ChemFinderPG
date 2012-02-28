class CreateFgroups < ActiveRecord::Migration
  def change
    create_table :fgroups do |t|
      t.string :name

      t.timestamps
    end
  end
end
