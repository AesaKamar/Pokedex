class CreateAbilities < ActiveRecord::Migration
  def change
    create_table :abilities do |t|
      t.integer :number
      t.string :name
      t.text :description
      t.text :shortdescription

      t.timestamps
    end
  end
end
