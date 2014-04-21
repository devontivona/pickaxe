class Program < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :instructions
end
