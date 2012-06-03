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

      # first frame has strike
      it "returns 74 when given the frames: 'X-415390107133238009'" do
         @bowling.get_score("X-415390107133238009").should == 74
      end

      # first and second frames have strikes
      it "returns 97 when given the frames: 'X-X-5390107133238009'" do
         @bowling.get_score("X-X-5390107133238009").should == 97
      end

      # first, second and third frame have strikes
      it "returns 124 when given the frames: 'X-X-X-90107133238009'" do
         @bowling.get_score("X-X-X-90107133238009").should == 124
      end

      # lots of strikes but not in the 10th frame
      it "returns 191 when given the frames: 'X-X-X-X-X-71X-23X-09'" do
         @bowling.get_score("X-X-X-X-X-71X-23X-09").should == 191
      end

      # another test with lots of strikes but none in the 10th
      it "returns 200 when given the frames: 'X-X-X-X-X-7190X-X-09'" do
         @bowling.get_score("X-X-X-X-X-7190X-X-09").should == 200
      end

      # lots of strike and 1 spare but none in the 10th
      it "returns 224 when given the frames: 'X-X-X-X-X-7391X-X-09'" do
         @bowling.get_score("X-X-X-X-X-7391X-X-09").should == 224
      end

      # no marks save a spare in the 10th frame
      it "returns 80 when given the frames: '523442136280903544915'" do
         @bowling.get_score("523442136280903544915").should == 80
      end

      # lots of mixed marks including a spare in the 10th
      it "returns 197 when given the frames: '52X-X-9146X-37X-X-918'" do
         @bowling.get_score("52X-X-9146X-37X-X-918").should == 197
      end

      # lots of mixed marks including a spare followed by a strike in 10th
      it "returns 212 when given the frames: '82X-X-9146X-37X-X-91X'" do
         @bowling.get_score("82X-X-9146X-37X-X-91X").should == 212
      end

      # no marks until last frame which contains a strike
      it "returns 98 when given the frames: '815236814563729081X72'" do
         @bowling.get_score("815236814563729081X72").should == 98
      end

      # no marks until last frame which contains 2 strikes
      it "returns 107 when given the frames: '815236814563729081XX8'" do
         @bowling.get_score("815236814563729081XX8").should == 107
      end

      # no marks until last frame which contains 3 strikes
      it "returns 109 when given the frames: '815236814563729081XXX'" do
         @bowling.get_score("815236814563729081XXX").should == 109
      end
      
      # no marks until the last 2 frames: spare strike
      it "returns 120 when given the frames: '815236814563729082XXX'" do
         @bowling.get_score("815236814563729082XXX").should == 120
      end

      # no marks until the last 2 frames: strike strike
      it "returns 130 when given the frames: '8152368145637290X-XXX'" do
         @bowling.get_score("8152368145637290X-XXX").should == 130
      end

      # no marks until the last 3 frames: strike strike strike
      it "returns 151 when given the frames: '81523681456372X-X-XXX'" do
         @bowling.get_score("81523681456372X-X-XXX").should == 151
      end

      # marks all over
      it "returns 181 when given the frames: 'X-5536X-X-467282X-X91'" do
         @bowling.get_score("X-5536X-X-467282X-X91").should == 181
      end

      # marks all over
      it "returns 180 when given the frames: 'X-5536X-X-4672X-82XX8'" do
         @bowling.get_score("X-5536X-X-4672X-82XX8").should == 180
      end

      # marks all over
      it "returns 180 when given the frames: 'X-5536X-X-4672X-82XX8'" do
         @bowling.get_score("X-5536X-X-4672X-82XX8").should == 180
      end

      # perfect game
      it "returns 300 when given the frames: 'X-X-X-X-X-X-X-X-X-XXX'" do
         @bowling.get_score("X-X-X-X-X-X-X-X-X-XXX").should == 300
      end


   end
end
