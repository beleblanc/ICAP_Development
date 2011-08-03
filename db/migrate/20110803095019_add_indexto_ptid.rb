class AddIndextoPtid < ActiveRecord::Migration
  def self.up
    add_index :ptids, :ptid
    
  end

  def self.down
    remove_index :ptids, :ptid
  end
end
