class CreateAbilities < ActiveRecord::Migration
  def change
    create_table :abilities do |t|
      t.primary_key :number
      t.string :name
      t.text :description
      t.string :Short
      t.text :description

      t.timestamps
    end
  end
end
