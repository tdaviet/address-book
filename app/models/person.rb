class Person < ActiveRecord::Base 
  attr_accessible :first_name, :last_name, :middle_name

  validates :first_name,  :presence => true
  validates :last_name,   :presence => true
  
#  def initialize(attributes = {Person.new})
#    @first_name  = attributes[:first_name]
#    @last_name   = attributes[:last_name]
#  end
  
  def full_name
    self.first_name + " " + self.last_name
    if self.middle_name is_not nil
      self.first_name + " " + self.middle_name + " " + self.last_name
    end
  end
end
