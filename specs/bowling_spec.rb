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
      # no marks
      it "returns 63 when given the frames: '31415390107133238009'" do
         @bowling.get_score("31415390107133238009").should == 63
      end

      # another test with no marks
      it "returns 68 when given the frames: '30417281904523135253'" do
         @bowling.get_score("30417281904523135253").should == 68
      end

      # first frame has a spare
      it "returns 73 when given the frames: '91415390107133238009'" do
         @bowling.get_score("91415390107133238009").should == 73
      end

      # multiple spares
      it "returns 101 when given the frames: '14824272735362645543'" do
         @bowling.get_score("14824272735362645543").should == 101
      end


   end

end
