class Person < ActiveRecord::Base
  attr_accessible :fname, :lname
  
  def avinaw?
    fname == 'avinaw'
  end
end
