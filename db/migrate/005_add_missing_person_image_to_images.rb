class AddMissingPersonImageToImages < ActiveRecord::Migration
  def self.up
    change_table :images do |t|
      t.integer :missing_person_id
    t.string :image
    end
  end

  def self.down
    change_table :images do |t|
      t.remove :missing_person_id
    t.remove :image
    end
  end
end
