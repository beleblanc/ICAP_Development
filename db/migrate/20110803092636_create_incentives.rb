class CreateIncentives < ActiveRecord::Migration
  def self.up
    create_table :incentives do |t|
      t.string :ptid
      t.string :serial_number
      t.date :date_out
      t.string :field_manager
      t.boolean :transfered
      t.date :date_transfered

      t.timestamps
    end
  end

  def self.down
    drop_table :incentives
  end
end
