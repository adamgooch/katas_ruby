class Prime_Factors
   
   def get_factors number
      factors = []
      while number > 1
         if number % 2 == 0
            factors << 2
         end
         number -= 1
      end
      factors
   end

end
