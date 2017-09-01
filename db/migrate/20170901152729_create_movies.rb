class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :image
      t.string :year
      t.string :genre
      t.string :rating
      t.string :popularity
      t.string :video

      t.timestamps
    end
  end
end
