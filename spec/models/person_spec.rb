require 'spec_helper'

describe Person do
  
  before(:each) do
    @valid_attributes = {
      :fname => "Ankit",
      :lname => "Mishra"
    }
  end
  
  it "should create new instance of person" do
    lambda{
      Person.create!(@valid_attributes)
    }.should change(Person, :count).by(1)    
  end
  
  it "should create new instance of person" do
    lambda{
      Person.create!(@valid_attributes)
      Person.create!(@valid_attributes)
    }.should change(Person, :count).from(1).to(2)    
  end
  
end
