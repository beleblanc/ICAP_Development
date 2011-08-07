class Narrative < ActiveRecord::Base
  validates_length_of :ptid, is => 10
  validates_numericality_of :ptid
  validates_presence_of :ptid
end
