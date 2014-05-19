class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.string :image_one_url
      t.string :image_two_url
      t.string :image_three_url

      t.timestamps
    end
  end
end
