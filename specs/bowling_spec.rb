require_relative '../bowling'

describe Bowling do

   before :each do
      @bowling = Bowling.new
   end

   describe "#new" do
      it "returns a new bowling object" do
         @bowling.should be_an_instance_of Bowling
      end
   end

   describe "get_score" do
      it "returns 63 when given the frames: '31415390107133238009'" do
         @bowling.get_score("31415390107133238009").should == 63
      end
   end

end
