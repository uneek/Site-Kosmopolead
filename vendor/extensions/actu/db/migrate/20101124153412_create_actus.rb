class CreateActus < ActiveRecord::Migration
  def self.up
    create_table :actus do |t|
      t.date :actu_date
      t.string :contenu
      t.string :lien

      t.timestamps
    end
  end

  def self.down
    drop_table :actus
  end
end
