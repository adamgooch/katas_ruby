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

end
