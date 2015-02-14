class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :description
      t.text :information
      t.string :image_filename

      t.timestamps
    end
  end
end
