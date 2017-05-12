class CreateMyWines < ActiveRecord::Migration
  def change
    create_table :my_wines do |t|
      t.integer :wine_id
      t.integer :user_id

      t.timestamps

    end
  end
end
