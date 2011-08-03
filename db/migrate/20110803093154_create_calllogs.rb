class CreateCalllogs < ActiveRecord::Migration
  def self.up
    create_table :calllogs do |t|
      t.string :ptid
      t.integer :number_id
      t.time :attempttime
      t.string :outcome
      t.string :answerer
      t.integer :refferal_number
      t.time :callback
      t.text :comments

      t.timestamps
    end
  end

  def self.down
    drop_table :calllogs
  end
end
