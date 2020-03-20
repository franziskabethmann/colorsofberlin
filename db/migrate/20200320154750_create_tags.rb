class CreateTags < ActiveRecord::Migration[5.2]
  def change
    create_table :tags do |t|
      t.references :picture, foreign_key: true
      t.references :color, foreign_key: true

      t.timestamps
    end
  end
end
