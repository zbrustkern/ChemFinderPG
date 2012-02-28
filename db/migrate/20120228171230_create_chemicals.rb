class CreateChemicals < ActiveRecord::Migration
  def change
    create_table :chemicals do |t|
      t.string :name
      t.string :casnum
      t.text :location
      t.text :quantity

      t.timestamps
    end
  end
end
