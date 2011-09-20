class Person < ActiveRecord::Base 
  attr_accessible :first_name, :last_name, :middle_name

  validates :first_name,  :presence => true
  validates :last_name,   :presence => true


  
  def full_name
    if self.middle_name.nil?
      self.first_name + " " + self.last_name
    else
      self.first_name + " " + self.middle_name + " " + self.last_name
    end
  end
end
