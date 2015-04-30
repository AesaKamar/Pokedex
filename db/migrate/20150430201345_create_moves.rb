class CreateMoves < ActiveRecord::Migration
  def change
    create_table :moves do |t|
      t.string :name
      t.integer :type
      t.integer :pp
      t.integer :power
      t.integer :accuracy
      t.integer :category
      t.integer :damage
      t.string :description

      t.timestamps
    end
  end
end
