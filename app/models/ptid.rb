class Ptid < ActiveRecord::Base
  set_primary_key :ptid
  
  validates_length_of :ptid, :is => 10
  validates_numericality_of :ptid
  validates_uniqueness_of :ptid
  validates_presence_of :ptid
  
  has_many :phones
  has_many :narratives
  has_one :incentives
  
end
