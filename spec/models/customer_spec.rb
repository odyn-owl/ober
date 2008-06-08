require File.dirname(__FILE__) + "/../spec_helper"

describe Customer do
  before(:each) do
    @customer = Customer.new
  end

  it "should be invalid with empty attributes" do
    @customer.should_not be_valid
    @customer.should have(2).errors
  end

  it "should be invlaid with blank name attribute" do
    @customer.name = "   "
    @customer.should_not be_valid
    @customer.should have(1).error_on(:name)
  end

  it "should be invalid without phone" do
    @customer.phone =  nil
    @customer.should_not be_valid
    @customer.should have(1).error_on(:phone)
  end

  it "should be valid with name and phone present" do
    @customer.name = "David"
    @customer.phone = "455"
    @customer.should be_valid
    @customer.should have(0).errors
  end
end



describe Customer, "with david? method" do

  before(:each) do
    @customer = Customer.new
  end

  it "should return false for default model" do
    @customer.should_not be_david
  end

  ['David', 'david', 'DaViD'].each do |name|

    it "should return true if name is '#{name}'" do
      @customer.name = name
      @customer.should be_david
    end

  end

  ['david ', 'david1234', '1234david'].each do |name| 
    
    it "should return false if name is '#{name}'" do
      @customer.name = name
      @customer.should_not be_david
    end

  end
end
