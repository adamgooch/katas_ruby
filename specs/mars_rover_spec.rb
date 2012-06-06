require_relative '../mars_rover'

describe Mars_Rover do

   before :each do
      @rover = Mars_Rover.new(0,0,'n')
   end

   describe "#new" do
      it "returns a new mars rover object" do
         @rover.should be_an_instance_of Mars_Rover
      end

      it "is facing north" do
         @rover.facing.should == 'n'
      end
   end

   describe "move" do
      it "is facing east when given the r command" do
         @rover.facing.should == 'e'
      end

   end
end
