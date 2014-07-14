class Article < ActiveRecord::Base
  belongs_to :subject
  has_many :problems, dependent: :destroy
  acts_as_list scope: :subject

  validates_presence_of :title, :body, :position
end
