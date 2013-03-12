class Document < ActiveRecord::Base
  attr_accessible :doc_type, :file

  has_attached_file :file,
      :storage => :s3,
      :s3_credentials => {
        :bucket => ENV['AWS_BUCKET'],
        :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
        :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
      }


  validates :doc_type, presence: true 
  validates :file, presence: true
end
