class CreateSlides < ActiveRecord::Migration
  def self.up
    create_table :slides do |t|
      t.string :title
      t.string :url
      t.string :image_file_name
      t.string :image_content_type
      t.integer :image_file_size
      t.datetime :image_updated_at

      t.timestamps
    end
  end

  def self.down
    drop_table :slides
  end
end
