class Phone < ActiveRecord::Base
validates_length_of :ptid, is => 10
  validates_numericality_of :ptid

  validates_presence_of :ptid
  belongs_to :ptid
end
