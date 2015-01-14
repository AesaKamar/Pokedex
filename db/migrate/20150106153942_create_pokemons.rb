class CreatePokemons < ActiveRecord::Migration
  def change
    create_table :pokemons do |t|
      t.integer :number
      t.string :name
      t.string :type1
      t.string :type2
      t.text :entry

      t.timestamps
    end
  end
end
