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
         @rover.move('r')
         @rover.facing.should == 'e'
      end

      it "is facing south when given the rr command" do
         @rover.move('rr')
         @rover.facing.should == 's'
      end

      it "is facing north when given the rrrr command" do
         @rover.move('rrrr')
         @rover.facing.should == 'n'
      end
      
      it "is facing west when given the l command" do
         @rover.move('l')
         @rover.facing.should == 'w'
      end

      it "is facing south when given the llllll command" do
         @rover.move('llllll')
         @rover.facing.should == 's'
      end

      it "is at coordinate 0,1 when given the f command" do
         @rover.move('f')
         @rover.coordinates.should == '0,1'
      end

      it "is at coordinate 0,0 when given the fb command" do
         @rover.move('fb')
         @rover.coordinates.should == '0,0'
      end

      it "is at coordinate 4,5 when given the frflfrflfrflfrflf command" do
         @rover.move('frflfrflfrflfrflf')
         @rover.coordinates.should == '4,5'
      end

      it "is at coordinate 0,16 when given the bbbbb command" do
         @rover.move('bbbbb')
         @rover.coordinates.should == '0,16'
      end

      it "is at coordinate 0,1 when given the ffffffffffffffffffffff command" do
         @rover.move('ffffffffffffffffffffff')
         @rover.coordinates.should == '0,1'
      end

   end
end
