class Task < ActiveRecord::Base
  attr_accessible :description, :list, :list_name
  belongs_to :list
  #validates :list_id, presence: true

  def list_name
  	list.name if self.list 
  end

  def list_name=(str)
  	self.list = List.find_or_create_by_name(str)
  end
end
