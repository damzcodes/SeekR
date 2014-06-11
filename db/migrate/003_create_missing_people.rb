class CreateMissingPeople < ActiveRecord::Migration
  def self.up
    create_table :missing_people do |t|
      t.string :first_name
      t.string :last_name
      t.string :last_seen
      t.string :image_url
      t.timestamps
    end
  end

  def self.down
    drop_table :missing_people
  end
end
