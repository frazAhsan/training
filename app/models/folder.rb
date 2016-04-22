class Folder < ActiveRecord::Base
  has_many :medium, dependent: :destroy
  accepts_nested_attributes_for :medium, :allow_destroy => true
end
