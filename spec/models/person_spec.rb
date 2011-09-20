require 'spec_helper'

describe Person do
  
  before(:each) do
    @valid_attributes = {
        :first_name   => "Joe",
        :middle_name  => "Shmo",
        :last_name    => "Example" }
  end

  it "creates a new instance given valid attributes" do
    lambda {
      Person.create(@valid_attributes)
      }.should change { Person.count }.by(1)
  end
  
  it "should have a first name" do
    no_first_name = Person.new(@valid_attributes.merge(:first_name => ""))
    no_first_name.should_not be_valid
  end
  
  it "should have a last name" do
    no_last_name = Person.new(@valid_attributes.merge(:last_name => ""))
    no_last_name.should_not be_valid
  end
  
  it "should have a full name" do
#    test_person = Person.new(@valid_attributes)
#    test_full_name = test_person.first_name + " " + test_person.middle_name + " " + test_person.last_name
#    test_full_name.should == test_person.full_name
    test_person = Person.new(@valid_attributes)
     test_person.full_name.should == "Joe Shmo Example"
  end
end
