class CreateNarratives < ActiveRecord::Migration
  def self.up
    create_table :narratives do |t|
      t.string :ptid
      t.text :narratte
      t.boolean :review

      t.timestamps
    end
  end

  def self.down
    drop_table :narratives
  end
end
