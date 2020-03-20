class CreatePictures < ActiveRecord::Migration[5.2]
  def change
    create_table :pictures do |t|
      t.string :photo
      t.string :date
      t.string :address

      t.timestamps
    end
  end
end
