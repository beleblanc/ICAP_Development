class CreatePtids < ActiveRecord::Migration
  def self.up
    create_table :ptids do |t|
      t.string :ptid :limit => 10
      t.index :ptid
      t.date :enrollment
      t.date :follow_up
      t.date :handover
      t.integer :completion_code
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :ptids
  end
end
