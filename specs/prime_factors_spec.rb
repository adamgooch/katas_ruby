require_relative '../prime_factors'

describe Prime_Factors do

   before :each do
      @primeFactors = Prime_Factors.new
   end

   describe "#new" do
      it "returns a new prime factors object" do
         @primeFactors.should be_an_instance_of Prime_Factors
      end
   end

   describe "get_factors" do
      it "returns an empty list given 0" do
         @primeFactors.get_factors(0).should == []
      end

      it "returns an empty list given 1" do
         @primeFactors.get_factors(1).should == []
      end

      it "returns [2] given 2" do
         @primeFactors.get_factors(2).should == [2]
      end
      
      it "returns [3] given 3" do
         @primeFactors.get_factors(3).should == [3]
      end

      it "returns [2,2] given 4" do
         @primeFactors.get_factors(4).should == [2,2]
      end

      it "returns [5] given 5" do
         @primeFactors.get_factors(5).should == [5]
      end

      it "returns [2,3] given 6" do
         @primeFactors.get_factors(6).should == [2,3]
      end

      it "returns [7] given 7" do
         @primeFactors.get_factors(7).should == [7]
      end

      it "returns [2,2,2] given 8" do
         @primeFactors.get_factors(8).should == [2,2,2]
      end

      it "returns [3,3] given 9" do
         @primeFactors.get_factors(9).should == [3,3]
      end

      it "returns [2,5] given 10" do
         @primeFactors.get_factors(10).should == [2,5]
      end

      it "returns [11] given 11" do
         @primeFactors.get_factors(11).should == [11]
      end

   end
end
