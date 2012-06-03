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

end
