class CreateStreets < ActiveRecord::Migration
  def self.up
    create_table :streets do |t|
      t.string :name, :null => false
      t.decimal :price, :null => false
      t.integer :modules, :null => false
      t.integer :available, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :streets
  end
end

