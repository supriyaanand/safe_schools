class Issue < ActiveRecord::Base
  belongs_to :school
  has_many :comments, dependent: :destroy
end
