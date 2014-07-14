class Problem < ActiveRecord::Base
  belongs_to :article

  validates_presence_of :question, :answer, :difficulty_level
end
