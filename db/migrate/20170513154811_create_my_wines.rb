class CreateMyWines < ActiveRecord::Migration
  def change
    create_table :my_wines do |t|
      t.integer :user_id
      t.integer :wine_id
      t.boolean :bucket_list

      t.timestamps

    end
  end
end
