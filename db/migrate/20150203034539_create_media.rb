class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.string :name
      t.string :link
      t.string :link_type

      t.timestamps
    end
  end
end
