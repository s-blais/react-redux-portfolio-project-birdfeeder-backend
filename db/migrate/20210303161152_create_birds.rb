class CreateBirds < ActiveRecord::Migration[6.0]
  def change
    create_table :birds do |t|
      t.string :name
      t.string :image_url
      t.string :audubon_url

      t.timestamps
    end
  end
end
