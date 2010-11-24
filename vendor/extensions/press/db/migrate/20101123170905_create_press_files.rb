class CreatePressFiles < ActiveRecord::Migration
  def self.up
    create_table :press_files do |t|
      t.string :nom
      t.string :type
      t.string :document_file_name
      t.string :document_content_type
      t.integer :document_file_size
      t.datetime :document_updated_at
      t.string :visual_file_name
      t.string :visual_content_type
      t.integer :visual_file_size
      t.datetime :visual_updated_at

      t.timestamps
    end
  end

  def self.down
    drop_table :press_files
  end
end
