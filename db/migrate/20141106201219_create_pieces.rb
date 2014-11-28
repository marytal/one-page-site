class CreatePieces < ActiveRecord::Migration
  def change
    create_table :pieces do |t|
      t.string :url
      t.string :title
      t.string :description
      t.integer :views

      t.timestamps
    end
  end
end
