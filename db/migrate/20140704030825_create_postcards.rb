class CreatePostcards < ActiveRecord::Migration
  def change
    create_table :postcards do |t|
      t.string :recipient_name
      t.string :recipient_email
      t.string :sender_name
      t.string :sender_email
      t.text :message
      t.string :image_url
      t.datetime :deliver_on
      t.string :status

      t.timestamps
    end
  end
end
