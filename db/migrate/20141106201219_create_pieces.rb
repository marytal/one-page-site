class CreatePieces < ActiveRecord::Migration
  def change
    create_table :pieces do |t|
      t.binary :image
      t.string :mime_type
      t.string :title
      t.string :description
      t.integer :views

      t.timestamps
    end
  end
end
