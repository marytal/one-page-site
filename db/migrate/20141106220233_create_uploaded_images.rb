class CreateUploadedImages < ActiveRecord::Migration
  def change
    create_table :uploaded_images do |t|
      t.binary :image
      t.string :mime_type

      t.timestamps
    end
  end
end
