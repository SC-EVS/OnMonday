class Project < ActiveRecord::Base
  belongs_to :user
  has_many :teams
  has_many :backlog_items
end
