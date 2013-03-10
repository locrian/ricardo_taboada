class Agenda < ActiveRecord::Base
  attr_accessible :end_date, :start_date, :tasks

  validates :start_date, presence:true
  validates :end_date, presence:true
  validates :tasks, presence:true

end
