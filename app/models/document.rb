class Document < ActiveRecord::Base
  attr_accessible :doc_type, :file

  has_attached_file :file

  validates :doc_type, presence: true 
  validates :file, presence: true
end
