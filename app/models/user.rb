class User < ActiveRecord::Base
  validates :login, length: { maximum: 20 }
  has_many :projects
  has_many :teams
  has_many :backlog_items
  has_many :sprint_backlog_items
end
