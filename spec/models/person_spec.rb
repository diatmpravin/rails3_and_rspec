require 'spec_helper'

describe Person do
  
  before(:each) do
    @valid_attributes = {
      :fname => "Ankit",
      :lname => "Mishra"
    }
  end
  
  xit "should create new instance of person" do
    lambda{
      Person.create!(@valid_attributes)
    }.should change(Person, :count).by(1)    
  end
  
  xit "should create new instance of person" do
    lambda{
      Person.create!(@valid_attributes)
      Person.create!(@valid_attributes)
    }.should change(Person, :count).from(1).to(3)    
  end
  
  xit "should create new instance of person" do
    lambda{
      Person.create!(@valid_attributes)
    }.should change{Person.count}.by(1)    
  end
  
  xit "should create new instance of person" do
    lambda{
      Person.create!(@valid_attributes)
      Person.create!(@valid_attributes)
    }.should change{Person.count}.from(1).to(3)    
  end
  
  it "should save first name" do
    p = Person.create(:fname => 'ankit')
    p.fname.should == 'ankit'
  end
  
  it "should leave last name" do
    p = Person.create
    p.lname.should be_nil
  end
  
  it "verify first name should be 'avinaw'" do
    p = Person.create(:fname => 'avinaw')
    p.should be_avinaw
  end
end
