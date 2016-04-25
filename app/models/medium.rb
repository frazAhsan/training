class Medium < ActiveRecord::Base
  belongs_to :folder
  has_attached_file :file
  validates_attachment :file, :content_type => { :content_type => %w(text/plain application/pdf image/jpeg image/gif image/png application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document application/vnd.ms-excel application/vnd.openxmlformats-officedocument.spreadsheetml.sheet application/zip) }
  # has_many :rights
  # has_many :permissions, through: :rights
end
