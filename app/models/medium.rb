class Medium < ActiveRecord::Base
  belongs_to :folder
  has_attached_file :file
  validates_attachment :file, :content_type => { :content_type => %w(text/plain application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }
end
