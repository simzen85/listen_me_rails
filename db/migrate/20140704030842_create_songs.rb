class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name
      t.text :lyric
      t.integer :views
      t.string :keywords
      t.string :uploader
      t.string :performer
      t.string :writer
      t.string :album
      t.integer :views_month
      t.string :status
      t.string :filename
      t.references :category, index: true
      t.references :postcard, index: true

      t.timestamps
    end
  end
end
