class Incentive < ActiveRecord::Base
validates_length_of :ptid, is => 10
  validates_numericality_of :ptid
  validates_uniqueness_of :ptid
  validates_presence_of :ptid
has_one :ptid

end
