class List < ActiveRecord::Base
  attr_accessible :name, :tasks_attributes
  has_many :tasks, dependent: :destroy
  accepts_nested_attributes_for :tasks,
  reject_if: proc { |attribute| attribute['description'].blank? },
  allow_destroy: true
end
