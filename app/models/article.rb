class Article < ActiveRecord::Base
  belongs_to :subject
  has_many :sections
  acts_as_list scope: :subject

  validates_presence_of :title, :body
end
