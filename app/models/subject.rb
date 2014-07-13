class Subject < ActiveRecord::Base
  has_many :articles, dependent: :destroy

  validates_presence_of :name, :level
  validates_uniqueness_of :name
  validates :level, inclusion: { in: %w(High\ School College Graduate),
    message: "%{value} is not a valid level option" }
end
