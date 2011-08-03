class CreatePhones < ActiveRecord::Migration
  def self.up
    create_table :phones do |t|
      t.string :ptid
      t.integer :p_number
      t.string :p_type

      t.timestamps
    end
  end

  def self.down
    drop_table :phones
  end
end
