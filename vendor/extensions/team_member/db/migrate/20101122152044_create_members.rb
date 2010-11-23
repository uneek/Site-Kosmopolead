class CreateMembers < ActiveRecord::Migration
  def self.up
    create_table :members do |t|
      t.string :nom
      t.string :poste
      t.string :profil_kosmo
      t.string :image_file_name
      t.string :image_content_type
      t.integer :image_file_size
      t.datetime :image_updated_at
      

      t.timestamps
    end
  end

  def self.down
    drop_table :members
  end
end
